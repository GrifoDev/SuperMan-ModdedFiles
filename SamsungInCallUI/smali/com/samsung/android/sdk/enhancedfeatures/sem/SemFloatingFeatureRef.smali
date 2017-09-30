.class public Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/FloatingFeatureInterface;


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.samsung.android.feature.SemFloatingFeature"

.field public static final CONTACT_PACKAGE_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME:Ljava/lang/String; = "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

.field private static final SEC_FLOATING_FEATURE_CONTACTS_SUPPORT_LINK_SIM_CONTACT:Ljava/lang/String; = "SEC_FLOATING_FEATURE_CONTACTS_SUPPORT_LINK_SIM_CONTACT"

.field private static final SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

.field private static final SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME:Ljava/lang/String; = "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

.field private static final SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SHOW_BUTTON_BG:Ljava/lang/String; = "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SHOW_BUTTON_BG"

.field private static final TAG:Ljava/lang/String;

.field private static isSupported:Z

.field private static mSemFloatingFeatureRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;

.field private static sContactPackageName:Ljava/lang/String;

.field private static sFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

.field private static sIsGetContactPackageNameInited:Z

.field private static sIsGetMessagePackageNameInited:Z

.field private static sIsShowBtnBgEnabled:Z

.field private static sIsShowBtnBgInited:Z

.field private static sIsSupportLinkSimContactInited:Z

.field private static sIsSurveyModeEnabled:Z

.field private static sIsSurveyModeInited:Z

.field private static sMessagePackageName:Ljava/lang/String;

.field private static sisSupportLinkSimContactEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->TAG:Ljava/lang/String;

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->isSupported:Z

    :try_start_0
    const-string v0, "com.samsung.android.feature.SemFloatingFeature"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->isSupported:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsSupportLinkSimContactInited:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sisSupportLinkSimContactEnabled:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsShowBtnBgInited:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsShowBtnBgEnabled:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsSurveyModeInited:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsSurveyModeEnabled:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsGetContactPackageNameInited:Z

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsGetMessagePackageNameInited:Z

    return-void

    :catch_0
    move-exception v0

    sput-boolean v2, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->isSupported:Z

    const-string v0, "unsupported"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getEnableStatus(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEnableStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->isSupported:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-virtual {v0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->mSemFloatingFeatureRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->mSemFloatingFeatureRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->mSemFloatingFeatureRef:Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;

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

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->isSupported:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sFloatingFeatureInstance:Lcom/samsung/android/feature/SemFloatingFeature;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method


# virtual methods
.method public getContactPackageName()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsGetContactPackageNameInited:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sContactPackageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v1, "com.android.contacts"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sContactPackageName:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsGetContactPackageNameInited:Z

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sContactPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMessagePackageName()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsGetMessagePackageNameInited:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sMessagePackageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    const-string v1, "com.android.mms"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sMessagePackageName:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsGetMessagePackageNameInited:Z

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sMessagePackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isShowBtnBgEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsShowBtnBgInited:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsShowBtnBgEnabled:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SHOW_BUTTON_BG"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsShowBtnBgEnabled:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsShowBtnBgInited:Z

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsShowBtnBgEnabled:Z

    goto :goto_0
.end method

.method public isSupportLinkSimContactEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsSupportLinkSimContactInited:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sisSupportLinkSimContactEnabled:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "SEC_FLOATING_FEATURE_CONTACTS_SUPPORT_LINK_SIM_CONTACT"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sisSupportLinkSimContactEnabled:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsSupportLinkSimContactInited:Z

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sisSupportLinkSimContactEnabled:Z

    goto :goto_0
.end method

.method public isSurveyModeEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsSurveyModeInited:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsSurveyModeEnabled:Z

    :goto_0
    return v0

    :cond_0
    const-string v0, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsSurveyModeEnabled:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsSurveyModeInited:Z

    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/sem/SemFloatingFeatureRef;->sIsSurveyModeEnabled:Z

    goto :goto_0
.end method
