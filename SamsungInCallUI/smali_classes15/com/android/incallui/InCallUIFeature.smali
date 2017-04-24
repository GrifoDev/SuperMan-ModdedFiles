.class public Lcom/android/incallui/InCallUIFeature;
.super Ljava/lang/Object;
.source "InCallUIFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallUIFeature$Floating;,
        Lcom/android/incallui/InCallUIFeature$Setting;,
        Lcom/android/incallui/InCallUIFeature$Function;,
        Lcom/android/incallui/InCallUIFeature$Network;,
        Lcom/android/incallui/InCallUIFeature$Time;,
        Lcom/android/incallui/InCallUIFeature$Vowifi;,
        Lcom/android/incallui/InCallUIFeature$VOLTE;,
        Lcom/android/incallui/InCallUIFeature$Roaming;,
        Lcom/android/incallui/InCallUIFeature$HW;,
        Lcom/android/incallui/InCallUIFeature$IMS;,
        Lcom/android/incallui/InCallUIFeature$CSVT;,
        Lcom/android/incallui/InCallUIFeature$VTCOMMON;,
        Lcom/android/incallui/InCallUIFeature$MultiSIM;,
        Lcom/android/incallui/InCallUIFeature$Operator;,
        Lcom/android/incallui/InCallUIFeature$CallerInfo;,
        Lcom/android/incallui/InCallUIFeature$Emergency;,
        Lcom/android/incallui/InCallUIFeature$Audio;,
        Lcom/android/incallui/InCallUIFeature$UI;,
        Lcom/android/incallui/InCallUIFeature$GUI;
    }
.end annotation


# static fields
.field private static final CSC_NODE_GENERAL_INFO:Ljava/lang/String; = "GeneralInfo"

.field private static final CSC_NODE_SALES_CODE:Ljava/lang/String; = "SalesCode"

.field private static final TAG:Ljava/lang/String;

.field private static buildcarrier:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static omcSalesCode:Ljava/lang/String;

.field private static opStyleForHDicon:Ljava/lang/String;

.field private static opStyleForVolte:Ljava/lang/String;

.field private static sContactPackageName:Ljava/lang/String;

.field private static sMessagePackageName:Ljava/lang/String;

.field private static salesCode:Ljava/lang/String;

.field private static scafe_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-class v0, Lcom/android/incallui/InCallUIFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    const-string v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallUIFeature;->omcSalesCode:Ljava/lang/String;

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallUIFeature;->buildcarrier:Ljava/lang/String;

    const-string v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallUIFeature;->scafe_version:Ljava/lang/String;

    sput-object v1, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    sput-object v1, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    sput-object v1, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    sput-object v1, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactsPackageName()Ljava/lang/String;
    .locals 7

    sget-object v4, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    :goto_0
    return-object v4

    :cond_0
    const-string v1, "com.android.contacts"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v6, "com.android.contacts"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sput-object v3, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    :goto_1
    sget-object v4, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getContactsPackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sput-object v1, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :try_start_0
    sget-object v4, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sput-object v3, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_2
.end method

.method public static getMessagePackageName()Ljava/lang/String;
    .locals 6

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "com.android.mms"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMessagePackageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    sput-object v1, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    return-object v0
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static hasPackage(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasProximitySensor()Z
    .locals 6

    const/4 v4, 0x0

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    const/16 v5, 0x8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v5, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_0
.end method

.method public static hasPutUpDownMotionFeature(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "com.sec.feature.sensorhub"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasSystemFeature(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasSystemFeature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    :goto_0
    return v3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasVibratorFeature()Z
    .locals 5

    const/4 v0, 0x1

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    sget-object v2, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasVibratorFeature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isApplicationEnabled(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v4, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-boolean v1, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isChineseLunarCalendar()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "CHNCDMA"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnablePuzzySearch"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHNGSM"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnablePuzzySearch"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBPMFSortList"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static isEnableLunarCalendar(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isChineseLunarCalendar()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "KOREA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHINA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HKTW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HONGKONG"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TAIWAN"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VI"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEnableNsdsServiceStatus()Z
    .locals 9

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/incallui/operator/usa/jansky/JanskyContract$Devices;->buildNsdsServiceStatusUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v7, "1"

    const-string v0, "nsds_service_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    sget-object v0, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableNsdsServiceStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public static isMultiSimConfigDsdaEnabled()Z
    .locals 2

    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isMultiSimConfigDsdsEnabled()Z
    .locals 2

    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportCSVT()Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_VT_ConfigBearer"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "-CSVT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method public static isSupportPSVT()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableLTEVideoCall"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private static isSupportSmartCall(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.smartcallprovider"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const-string v3, "off"

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "off"

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 2

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeFeature(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/InCallUIFeature;->makeFeature(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static makeFeature(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x1

    sput-object p0, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    const-string v4, "makeFeature start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sput-object p1, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_fake_operator"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_VoiceCall_ConfigOpStyleForVolte"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_VoiceCall_ConfigOpStyleForHdIcon"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForCommon()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForTablet()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForChina()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForIndia()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForHKTW()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForJapan()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForKor()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForUsa()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForCanada()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForLatin()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForVT()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForAfrica()V

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForMassProject()V

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    const-string v4, "makeFeature end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFeatureList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_smart_call"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->omcSalesCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->omcSalesCode:Ljava/lang/String;

    sput-object v3, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/external/CscParser;->getInstance()Lcom/android/incallui/external/CscParser;

    move-result-object v0

    const-string v3, "GeneralInfo"

    invoke-virtual {v0, v3}, Lcom/android/incallui/external/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    const-string v3, "SalesCode"

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/external/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/external/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static makeFeatureForAfrica()V
    .locals 5

    const-string v1, "ECT"

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "enabled"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "ect_volte_ui"

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v4, "ECT_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static makeFeatureForCanada()V
    .locals 18

    const-string v14, "RWC"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v14, "FMC"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v14, "RWA"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v14, "BMC"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v14, "VTR"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v14, "BMA"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v14, "VMC"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v14, "BWA"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v14, "TLS"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v14, "KDO"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v14, "ESK"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v14, "GLW"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v14, "MTA"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    const/4 v14, 0x1

    :goto_0
    if-nez v14, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    sget-object v14, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "feature_can"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "enabled"

    invoke-static {v14}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "canada_volte_ui"

    sget-object v16, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v17, "CANADA_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "video_connected_as_voice"

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_3
    const/4 v14, 0x1

    :goto_2
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "incoming_call_widget_for_volte"

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_4
    const/4 v14, 0x1

    :goto_3
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "canada_bmc_volte_ui"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v17, "BMC_"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v17, "VMC"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    :cond_5
    const/4 v14, 0x1

    :goto_4
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v16, "canada_rwc_fmc_volte_ui"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v17, "RWC_"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v17, "FMC_"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_b

    :cond_6
    const/4 v14, 0x1

    :goto_5
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "usa_gsm_volte_ui"

    const-string v16, "canada_volte_ui"

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-object v14, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "show_switch_icon_in_button"

    const-string v16, "usa_gsm_volte_ui"

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v14, 0x0

    goto :goto_3

    :cond_a
    const/4 v14, 0x0

    goto :goto_4

    :cond_b
    const/4 v14, 0x0

    goto :goto_5
.end method

.method public static makeFeatureForChina()V
    .locals 10

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v3, "CHN"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHU"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CTC"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHM"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "CHC"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "CTC"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "CHM"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move v3, v5

    :goto_1
    if-nez v3, :cond_4

    :goto_2
    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_chn"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_ctc"

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "phone_number_locator"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_ConfigOpStyleForRoaming"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "PNL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "phone_number_locator_tencent"

    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "com.sgmc.phonenumberlocatorservice"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v5

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "geo_description_disable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ctc_country_code_locator"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_ConfigOpStyleForRoaming"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "CCL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "yellowpage_callerid_info"

    const-string v7, "SHOW"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_ConfigForYellowPage"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "visual_call_center_callerid_info"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_SupportVisualCallCenter"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ctc_call_time_duration"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_6
    move v3, v5

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ctc_vip_mode"

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_multisim_preferred_sim"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_multisim_display_sim_icon"

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "enabled"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_voice_conference_cmcc"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_voice_conference"

    const-string v7, "ims_voice_conference_cmcc"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "incoming_call_widget_for_volte"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_forwarding_number"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_ConfigOpStyleForCallerId"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "forwarding_number"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_conference_maximum_participants_toast"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "enable_conference_info_banner"

    const-string v7, "ims_voice_conference_cmcc"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "china_cdma_call"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "chn_cdma_network_on_all_rat"

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ctc_call_time_duration_for_six_mode"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v5

    :goto_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "emergency_call_state_update_after_dial"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "STATE_UPDATE_AFTER_DIAL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "hold_key_call_recording"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_SupportVoiceRecordingDuringHoldCall"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "rich_call_screen_cmcc"

    const-string v7, "CMCC"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_ConfigRichCallerId"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "multi_number_cmcc"

    const-string v7, "CMCC"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Contact_ConfigMultiCallOption"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_sassistant"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_rcs_bb"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_chn_cu_hd_voice_call"

    sget-object v7, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v8, "CU_CSHD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    sget-object v7, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v8, "CHC_OPEN_HD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_a
    move v3, v4

    goto/16 :goto_3

    :cond_b
    move v3, v4

    goto/16 :goto_4

    :cond_c
    move v3, v4

    goto/16 :goto_5
.end method

.method public static makeFeatureForCommon()V
    .locals 15

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "feature_prt"

    const-string v12, "PRT"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "feature_org"

    const-string v10, "OFR"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "SFR"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "FTM"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "FTB"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_0
    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_folder_hardkey"

    const-string v12, "com.sec.feature.folder_type"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_folder_single_lcd"

    const-string v12, "com.sec.feature.folder_type"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_bluetooth_multi_profile"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "hw_home_key"

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v13, Lcom/android/incallui/wrapper/InternalRWrapper$bool;->config_showNavigationBar:I

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_e

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_merge_call"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_conference_call"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_call_transfer"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v13, "CscFeature_VoiceCall_DisableCallTransfer"

    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_f

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_call_transfer_blind_ect"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_VoiceCall_SupportImsBlindTransfer"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_call_transfer_ps_domain"

    const-string v10, "support_call_transfer"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "SLK"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "TDC"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_1
    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_all_rat"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_VoiceCall_ConfigRecording"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "voice_call_recording"

    const-string v10, "RecordingAllowed"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "RecordingAllowedByMenu"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    :cond_2
    const/4 v10, 0x1

    :goto_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "notice_sound_for_voice_recording"

    const-string v12, "NoticeSound"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_VoiceCall_ConfigNoticeSoundForVoiceRecording"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "hac_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Setting_SupportHAC"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "bike_mode"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "bikemode"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "voice_call_recording_menu"

    const-string v12, "RecordingAllowedByMenu"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "voice_call_recording_button"

    const-string v10, "voice_call_recording"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    const-string v10, "voice_call_recording_menu"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    const/4 v10, 0x1

    :goto_5
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "use_action_memo_duringcall"

    const-string v10, "SEC_FLOATING_FEATURE_VOICECALL_SUPPORT_ACTION_MEMO"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "com.sec.feature.spen_usp"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_3
    const/4 v10, 0x1

    :goto_6
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_outgoing_dialer_animation"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_incoming_call_widget_clear_flick_effect"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_cover_extra_size"

    sget-object v12, Lcom/android/incallui/InCallUIFeature;->buildcarrier:Ljava/lang/String;

    const-string v13, "hero2"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_ims_conference_split"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_VoiceCall_SupportImsConfSplit"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_clear_inner_circle_widget"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "enabled"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "display_hd_icon"

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v13, "NOHD"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    const/4 v10, 0x1

    :goto_7
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "display_cshd_icon"

    sget-object v12, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v13, "_CSHD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "not_support_switch_button"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_VoiceCall_DisableSwitchButton"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "not_support_addcall_button"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_VoiceCall_DisableAddcallButton"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "show_switch_icon_in_button"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isSupportPSVT()Z

    move-result v10

    if-eqz v10, :cond_15

    const-string v10, "not_support_switch_button"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_15

    const/4 v10, 0x1

    :goto_8
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "show_reminder_button"

    const-string v12, "com.samsung.android.app.reminder"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_vowifi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_VoiceCall_SupportShowVowifiEndCall"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "show_vowifi_endcall_button"

    if-eqz v9, :cond_16

    const-string v10, "support_vowifi"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    :goto_9
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "show_vowifi_incomingcall_button"

    if-eqz v9, :cond_17

    const-string v10, "support_vowifi"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v10, 0x1

    :goto_a
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "show_vowifi_voicecall_button"

    const-string v10, "feature_prt"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "SER"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    :cond_4
    const-string v10, "support_vowifi"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v10, 0x1

    :goto_b
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_ConfigImsOpStyle"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_gray_screen"

    const-string v10, "SEC_FLOATING_FEATURE_LCD_SUPPORT_MDNIE_HW"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    const-string v10, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_19

    const/4 v10, 0x1

    :goto_c
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "hide_vt_button_during_unsupported"

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v13, "KOR_"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1a

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v13, "JPN_"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v10, 0x1

    :goto_d
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "personal_vibration"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->hasVibratorFeature()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "disable_incoming_call_popup_during_camera"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v13, "CscFeature_Camera_EnableCameraDuringCall"

    const/4 v14, 0x1

    invoke-virtual {v10, v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v10

    if-nez v10, :cond_1b

    const/4 v10, 0x1

    :goto_e
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_onehand_operation"

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ONE_HANDED_INPUT_GUI"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_mobile_keyboard"

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "disable_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v13, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c

    const/4 v10, 0x1

    :goto_f
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "people_stripe"

    const-string v12, "com.sec.feature.people_edge_notification"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "lock_screen_during_call"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->hasProximitySensor()Z

    move-result v10

    if-nez v10, :cond_1d

    const/4 v10, 0x1

    :goto_10
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "ims_callplus"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "ims_crane"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "RCS_CPR"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "ims_rcs"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v13, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const-string v10, "BMC"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    const-string v10, "VMC"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v13, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "BASIC_PROFILE"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1e

    const/4 v10, 0x1

    :goto_11
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "ims_rcs_bb"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "PARTIAL_BRANDED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "ims_capability_check_on_call_end"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "handle_sip_error_code"

    const-string v10, "PHN"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "NEE"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "XFV"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    :cond_5
    const/4 v10, 0x1

    :goto_12
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "ATL"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "AVF"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "CNX"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "CYV"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "MOB"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "MTL"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "OMN"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "SIM"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "SWC"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "TCL"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "VD2"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "VDC"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "VDF"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "VDH"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "VDI"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "VGR"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "VIP"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "VOD"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "XFV"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "VDR"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "VDP"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "VOP"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "SFR"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "TOP"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "FTM"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    :cond_6
    const/4 v0, 0x1

    :goto_13
    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "block_vt_outgoing"

    if-eqz v0, :cond_21

    const-string v10, "ims_rcs"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v10, 0x1

    :goto_14
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "BLOCK_VT_DURING_PS_CALL"

    const-string v12, "EVR"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "enabled"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "default_volte"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "thl_volte_ui"

    sget-object v12, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v13, "THL_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "evr_volte_ui"

    sget-object v12, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v13, "EVR_"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v11, "SIN_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v11, "STH_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v11, "XSP_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v11, "MM1_"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_22

    :cond_7
    const/4 v6, 0x1

    :goto_15
    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "singapore_volte_ui"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_lunar_birthday"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->isEnableLunarCalendar(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "default_caller_information"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v13, "CscFeature_VoiceCall_ConfigOpStyleForIncomingCall"

    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "CALLERINFOCARD_DEFAULT_OFF"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_23

    const/4 v10, 0x1

    :goto_16
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "smart_ivr_callerid_info"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_VoiceCall_SupportSmartIvr"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "geo_description_disable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "disable_format_number"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "show_forwarding_number"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_VoiceCall_ConfigOpStyleForCallerId"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "forwarding_number"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "eri_info_label_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_VoiceCall_ConfigOpStyleForCallerId"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ERI"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_safetycare"

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_24

    :cond_9
    const/4 v10, 0x1

    :goto_17
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "game_no_interruption"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v13, "CscFeature_VoiceCall_DisableGameOnlyMode"

    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_25

    const/4 v10, 0x1

    :goto_18
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "contextservice_enable_survey_mode"

    const-string v12, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_spam_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v13, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "DELAYEDRING"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v13, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "REJECT"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_26

    :cond_a
    const/4 v10, 0x1

    :goto_19
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_spam_call_report"

    const-string v12, "support_spam_call"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "/"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_smart_call"

    const/4 v12, 0x0

    aget-object v12, v4, v12

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->isSupportSmartCall(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "support_smart_call"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v10, 0x0

    aget-object v10, v4, v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_smart_call_whitepage"

    const-string v12, "whitepages"

    const/4 v13, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_smart_call_whowho"

    const-string v12, "whowho"

    const/4 v13, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "support_knox_desktop"

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "feature_multisim"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v10

    if-eqz v10, :cond_27

    :cond_c
    const/4 v10, 0x1

    :goto_1a
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "feature_multisim_dsda"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "feature_multisim_preferred_sim"

    const-string v12, "feature_multisim"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "feature_multisim_adaptive_callback"

    const-string v12, "feature_multisim"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "qcom_cross_mapping"

    const-string v10, "feature_multisim"

    invoke-static {v10}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v13, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v10, v13}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    const/4 v10, 0x1

    :goto_1b
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "samsung_screen_timeout_incall"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "end_call_when_dial_e911"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v12

    const-string v13, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "EndPreviousCall"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "noble_enable_grace_ux"

    sget-object v12, Lcom/android/incallui/InCallUIFeature;->buildcarrier:Ljava/lang/String;

    const-string v13, "noblelte"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "show_local_time"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Common_AutoConfigurationType"

    const-string v12, "DISABLE"

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v10, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "autoconfig_simbased_ssku"

    const-string v12, "SIMBASED_SSKU"

    invoke-virtual {v2, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_8

    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_b

    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_1a
    const/4 v10, 0x0

    goto/16 :goto_d

    :cond_1b
    const/4 v10, 0x0

    goto/16 :goto_e

    :cond_1c
    const/4 v10, 0x0

    goto/16 :goto_f

    :cond_1d
    const/4 v10, 0x0

    goto/16 :goto_10

    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_11

    :cond_1f
    const/4 v10, 0x0

    goto/16 :goto_12

    :cond_20
    const/4 v0, 0x0

    goto/16 :goto_13

    :cond_21
    const/4 v10, 0x0

    goto/16 :goto_14

    :cond_22
    const/4 v6, 0x0

    goto/16 :goto_15

    :cond_23
    const/4 v10, 0x0

    goto/16 :goto_16

    :cond_24
    const/4 v10, 0x0

    goto/16 :goto_17

    :cond_25
    const/4 v10, 0x0

    goto/16 :goto_18

    :cond_26
    const/4 v10, 0x0

    goto/16 :goto_19

    :cond_27
    const/4 v10, 0x0

    goto/16 :goto_1a

    :cond_28
    const/4 v10, 0x0

    goto/16 :goto_1b
.end method

.method public static makeFeatureForHKTW()V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v1, "TGY"

    sget-object v4, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "BRI"

    sget-object v4, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CWT"

    sget-object v4, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TWN"

    sget-object v4, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FET"

    sget-object v4, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ZZH"

    sget-object v4, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_hktw"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "enabled"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "incoming_call_widget_for_volte"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "common_volte_hk"

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v6, "TGY_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v6, "ZZH_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "chn_cdma_network_on_all_rat"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "china_cdma_call"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "ctc_call_time_duration"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "ctc_call_time_duration_for_six_mode"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "emergency_call_state_update_after_dial"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "STATE_UPDATE_AFTER_DIAL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "feature_multisim_display_sim_icon"

    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public static makeFeatureForIndia()V
    .locals 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "INU"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "INS"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "SWC"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    if-nez v3, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    sget-object v6, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "panic_mode_swa"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_4
    move v3, v5

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "enabled"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "common_volte_in"

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v8, "INU_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v8, "INS_"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_5
    move v3, v5

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "incoming_call_widget_for_volte"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_6
    move v3, v5

    :goto_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_vowifi_voicecall_button"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_7
    const-string v7, "support_vowifi"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_2

    :cond_9
    move v3, v4

    goto :goto_3

    :cond_a
    move v3, v4

    goto :goto_4

    :cond_b
    move v5, v4

    goto :goto_5
.end method

.method public static makeFeatureForJapan()V
    .locals 9

    const/4 v4, 0x0

    const-string v3, "DCM"

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "KDI"

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "SBM"

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_dcm"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_kdi"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_sbm"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_packagename_for_fullscreen_incoming_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_ConfigOpStyleForIncomingCall"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DCM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "show_forwarding_number"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_ConfigOpStyleForCallerId"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "forwarding_number"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_end_call_time_blink_extension"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "automatic_answering_machine"

    const-string v6, "TRUE"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_SupportAutoAnsweringMemo"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_sync_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_ConfigOpPhoneService"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SYNC_CALL_KDI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_sda_support_feature"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_conference_call"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_merge_call"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v3, "enabled"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ims_voice_conference_kddi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ims_voice_conference"

    const-string v5, "ims_voice_conference_kddi"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "show_switch_icon_in_button"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "handle_sip_error_code"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "handle_sip_error_code_dcm"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "incoming_call_widget_for_volte"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "dcm_volte_popup_message"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_ConfigOpStyleForPopupMsg"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public static makeFeatureForKor()V
    .locals 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "SKT"

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SKC"

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "SKO"

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    move v5, v7

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "KTT"

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "KTC"

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "KTO"

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    move v5, v7

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v5, "LGT"

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LUC"

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LUO"

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    move v5, v7

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v5, "ANY"

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "KOO"

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_3
    move v5, v7

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_4
    move v5, v7

    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_a

    :goto_5
    return-void

    :cond_5
    move v5, v6

    goto/16 :goto_0

    :cond_6
    move v5, v6

    goto :goto_1

    :cond_7
    move v5, v6

    goto :goto_2

    :cond_8
    move v5, v6

    goto :goto_3

    :cond_9
    move v5, v6

    goto :goto_4

    :cond_a
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_skt"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_ktt"

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_lgt"

    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor_open"

    invoke-virtual {v5, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_tphone"

    const-string v5, "tphone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string v5, "com.skt.prod.phone"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string v5, "com.skt.prod.dialer"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_b
    move v5, v7

    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_tgroupon"

    const-string v9, "com.skt.tgroupon"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_twophone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_uwa"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_SupportUwaApp"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "lost_phone_lock"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_ConfigOpStyleForFindMobile"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "LOST_PHONE_LOCK_LGU"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "roaming_auto_dial"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_c
    move v5, v7

    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "enabled"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "auto_call_test"

    const-string v9, "eng"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_call_message"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "common_volte_kor"

    sget-object v9, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v10, "KOR_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "handle_sip_error_code"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isSupportPSVT()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "common_volte_kor"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_add_call"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_volte_roaming"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_IMS_SupportVolteDuringRoaming"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "show_switch_icon_on_callcard"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "show_switch_icon_in_button"

    const-string v5, "show_switch_icon_on_callcard"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    move v5, v7

    :goto_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_ps_barring"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_SupportImsPsBarring"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_voice_conference"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_support_photo_ring"

    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_support_multimedia_caller_id"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_SupportMCID"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_conference_call"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_merge_call"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "block_data_during_call"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "hd_voice_network_prefer"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableHDVoiceDuring3GConnection"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "government_request_project"

    const-string v5, "feature_kor_open"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "com.android.email"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "com.google.android.gm"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    move v5, v7

    :goto_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_dialpad_digits"

    sget-object v9, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v10, "KOR_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "emergency_find_lost_phone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_ConfigOpStyleForFindMobile"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "TRUE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_nsri_secure"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "display_uhd_voice_icon"

    const-string v5, "enabled"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v10, "LGU_UHD"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    move v5, v7

    :goto_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "cnap_supplementary_service"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_ConfigCnap"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "_CNAP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "cdnip_supplementary_service"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "geo_description_disable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ota_mode_disable_expand"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_DisableNotiBarExpandDuringOta"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "smart_auto_answering"

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "single_lte"

    const-string v9, "government_request_project"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_SupportSingleLTE"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    :cond_11
    :goto_b
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ims_rcs"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ims_rcs_bb"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_12
    move v5, v6

    goto/16 :goto_6

    :cond_13
    move v5, v6

    goto/16 :goto_7

    :cond_14
    move v5, v6

    goto/16 :goto_8

    :cond_15
    move v5, v6

    goto/16 :goto_9

    :cond_16
    move v5, v6

    goto/16 :goto_a

    :cond_17
    move v7, v6

    goto :goto_b
.end method

.method public static makeFeatureForLatin()V
    .locals 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v2, "ro.csc.countryiso_code"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "MX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "UY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "VE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SV"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "HN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "EC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "JM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "BO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "enable_ltn_callerid_matching"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "ltn_sdnname_display"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_EnableDisplaySdnNameDuringCall"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "fdn_contact_search"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_SearchIncludingFdn"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "geo_description_disable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "wating_calloption_end"

    const-string v6, "end"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "wating_calloption_hold"

    const-string v6, "hold"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CscFeature_VoiceCall_OptionConfigForCallWaiting"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "wating_calloption_invisible"

    const-string v2, "wating_calloption_end"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "wating_calloption_hold"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "display_ufn_hd_voice_icon"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v7, "UFN_HD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "enable_operator_name"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_VoiceCall_ConfigOpStyleForCallerId"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "OPERATOR_NAME"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_4

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_multisim_carrier_match"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableCarrierMatchingForMultiSimDev"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_tfg"

    const-string v6, "TFG"

    sget-object v7, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "display_hd_icon"

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "display_hd_icon"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v7, "IUS_CSHD"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    move v2, v3

    goto/16 :goto_2
.end method

.method public static makeFeatureForMassProject()V
    .locals 6

    const/4 v2, 0x0

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "j3xlte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "j1xlte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->buildcarrier:Ljava/lang/String;

    const-string v3, "j1xqlte"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "xcover3veltexx"

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "delay_display_screen_with_prefix_number"

    const-string v4, "xcover3veltexx"

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->buildcarrier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_mobile_keyboard"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_callplus"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_support_multimedia_caller_id"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static makeFeatureForTablet()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_device"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_fullscreen_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "no_receiver_in_call"

    invoke-static {}, Lcom/android/incallui/util/AudioUtils;->hasReceiver()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "lock_screen_during_call"

    const-string v4, "no_receiver_in_call"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->hasProximitySensor()Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public static makeFeatureForUsa()V
    .locals 31

    const-string v26, "XAS"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_0

    const-string v26, "SPR"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_9

    :cond_0
    const/16 v26, 0x1

    :goto_0
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v26, "VZW"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    const-string v26, "VMU"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const-string v26, "BST"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_a

    :cond_1
    const/16 v26, 0x1

    :goto_1
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_b

    :cond_2
    const/16 v26, 0x1

    :goto_2
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v26, "USC"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const-string v26, "MTR"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v26, "ACG"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v26, "XAR"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const-string v26, "CRI"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v26, "TFN"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const-string v26, "CSP"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v26, "LRA"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v26, "CCT"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_3

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_3

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_3

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_3

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_c

    :cond_3
    const/16 v26, 0x1

    :goto_3
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v26, "ATT"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    const-string v26, "AIO"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    :cond_4
    const/16 v26, 0x1

    :goto_4
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v26, "TMB"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    const-string v26, "TMK"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_e

    :cond_5
    const/16 v26, 0x1

    :goto_5
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_6

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_f

    :cond_6
    const/16 v26, 0x1

    :goto_6
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_10

    :cond_7
    const/16 v26, 0x1

    :goto_7
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_8

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_11

    :cond_8
    const/16 v26, 0x1

    :goto_8
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_12

    :goto_9
    return-void

    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 v26, 0x0

    goto/16 :goto_1

    :cond_b
    const/16 v26, 0x0

    goto/16 :goto_2

    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_3

    :cond_d
    const/16 v26, 0x0

    goto :goto_4

    :cond_e
    const/16 v26, 0x0

    goto :goto_5

    :cond_f
    const/16 v26, 0x0

    goto :goto_6

    :cond_10
    const/16 v26, 0x0

    goto :goto_7

    :cond_11
    const/16 v26, 0x0

    goto :goto_8

    :cond_12
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_usa"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "samsung_screen_timeout_incall"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "popup_call_service_has_icon"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "ecid_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_VoiceCall_ConfigOpStyleForCallerId"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "ECID"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "usa_cdma_emergency_concept"

    const-string v28, "ENABLE"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v29

    const-string v30, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyCdma"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "usa_cdma_smc_fac_req"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_VoiceCall_ConfigOpStyleForFactoryTest"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "UsaCdma"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "jansky_info_for_tmo"

    const-string v26, "Jansky"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v29

    const-string v30, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isEnableNsdsServiceStatus()Z

    move-result v26

    if-eqz v26, :cond_1c

    const/16 v26, 0x1

    :goto_a
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "tmo_echolocate_logger"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_Common_SupportEchoLocate"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "tmo_echolocate_logger_setting"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "global_network_cdma_gsm_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_VoiceCall_ConfigGlobalNetwork"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "Global"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "disable_add_call_mute_hold_during_emergency_call"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyDialCall"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "DisableMuteHold"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_spr"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "roaming_enhancement"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_VoiceCall_ConfigOpStyleForRoaming"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "roamingenhancement"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "spr_display_hd_icon"

    sget-object v28, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v29, "SPR_HD"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "not_support_extra_view_page"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_VoiceCall_DisableExtraViewPage"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "csc_chameleon_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "abbreviated_dialing_codes_enable"

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_13

    const-string v26, "csc_chameleon_enable"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1d

    :cond_13
    const/16 v26, 0x1

    :goto_b
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "abbreviated_dialing_codes_table_sprint"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "abbreviated_dialing_codes_table_virgin"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "abbreviated_dialing_codes_table_boost"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_usc"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "assisted_dialing_enable"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_VoiceCall_SupportAssistDialing"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "multiend_point"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_VoiceCall_SupportMultiendPoint"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_vzw"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_att"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_tmo"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v26, "enabled"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1a

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v26

    const-string v27, "CscFeature_VoiceCall_ConfigOpStyleForMvno"

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "vzw_volte_ui"

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v29, "VZW_"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_14

    const-string v26, "VZW_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1e

    :cond_14
    const/16 v26, 0x1

    :goto_c
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "vzw_volte_ui_conf"

    const-string v28, "vzw_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "usc_volte_ui"

    sget-object v28, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v29, "USC_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "att_volte_ui"

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v29, "ATT_"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_15

    const-string v26, "ATT_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_1f

    :cond_15
    const/16 v26, 0x1

    :goto_d
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "tmo_volte_ui"

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v29, "TMB_"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_16

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v29, "TMK_"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_16

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v29, "XAR_"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_16

    const-string v26, "TMO_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_20

    :cond_16
    const/16 v26, 0x1

    :goto_e
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "mpcs_volte_ui"

    sget-object v28, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v29, "MTR_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "us_volte_ui"

    sget-object v28, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v29, "USA_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "usa_gsm_volte_ui"

    const-string v26, "vzw_volte_ui"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_21

    const/16 v26, 0x1

    :goto_f
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "incoming_call_widget_for_volte"

    const-string v28, "us_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "call_details_for_hd_icon"

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v29, "VZW_HD"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_17

    const-string v26, "VZW_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_22

    :cond_17
    const/16 v26, 0x1

    :goto_10
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "us_show_on_hold"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_VoiceCall_SupportHoldUiForVolte"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "video_connected_as_voice"

    const-string v28, "att_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "enable_conference_info_banner"

    const-string v28, "vzw_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "ims_voice_conference_vzw"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_VoiceCall_EnableGroupCallMenu"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "ims_voice_conference"

    const-string v28, "ims_voice_conference_vzw"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "ims_only_conf_initiator_can_merge"

    const-string v28, "ims_voice_conference_vzw"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "spr_vowifi_ui"

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_23

    const-string v26, "autoconfig_simbased_ssku"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_23

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v26

    const-string v29, "CscFeature_Common_Sprint_Vowifi"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_18

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v26

    const-string v29, "CscFeature_RIL_SupportEpdg"

    const/16 v30, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    if-eqz v26, :cond_23

    :cond_18
    const/16 v26, 0x1

    :goto_11
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "show_vowifi_endcall_button"

    const-string v26, "spr_vowifi_ui"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_19

    const-string v26, "att_volte_ui"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_24

    :cond_19
    const/16 v26, 0x1

    :goto_12
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "show_vowifi_incomingcall_button"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "ims_capability_check_on_call_end"

    const-string v26, "ims_capability_check_on_call_end"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_25

    const-string v26, "att_volte_ui"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_25

    const/16 v26, 0x1

    :goto_13
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "ims_rcs"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "ims_rcs_bb"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "PARTIAL_BRANDED"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "show_switch_icon_in_button"

    const-string v28, "usa_gsm_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "support_ims_conference_split"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v28

    const-string v29, "CscFeature_VoiceCall_SupportImsConfSplit"

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "support_softphone"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "handle_sip_error_code"

    const-string v26, "jansky_info_for_tmo"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1b

    const-string v26, "att_volte_ui"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1b

    const-string v26, "vzw_volte_ui"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_26

    :cond_1b
    const/16 v26, 0x1

    :goto_14
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_1c
    const/16 v26, 0x0

    goto/16 :goto_a

    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_b

    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_c

    :cond_1f
    const/16 v26, 0x0

    goto/16 :goto_d

    :cond_20
    const/16 v26, 0x0

    goto/16 :goto_e

    :cond_21
    const/16 v26, 0x0

    goto/16 :goto_f

    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_10

    :cond_23
    const/16 v26, 0x0

    goto/16 :goto_11

    :cond_24
    const/16 v26, 0x0

    goto/16 :goto_12

    :cond_25
    const/16 v26, 0x0

    goto/16 :goto_13

    :cond_26
    const/16 v26, 0x0

    goto :goto_14
.end method

.method public static makeFeatureForVT()V
    .locals 56

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isSupportCSVT()Z

    move-result v36

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isSupportPSVT()Z

    move-result v37

    sget-object v52, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v53, "psvt_support"

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v52, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v53, "csvt_supprt"

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v54, "vicommon_enabled"

    if-nez v37, :cond_0

    if-eqz v36, :cond_2

    :cond_0
    const/16 v52, 0x1

    :goto_0
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v52

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v52, "vicommon_enabled"

    invoke-static/range {v52 .. v52}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v52, 0x0

    goto :goto_0

    :cond_3
    const-string v52, "VIA"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v45

    const-string v52, "TUR"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    const-string v52, "RWC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    const-string v52, "FMC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const-string v52, "RWA"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    const-string v52, "BMC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v52, "VTR"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    const-string v52, "BMA"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v52, "VMC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    const-string v52, "BWA"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v52, "TLS"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    const-string v52, "KDO"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const-string v52, "ESK"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string v52, "GLW"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_4

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_4

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_4

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_4

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_4

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_4

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_4

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_13

    :cond_4
    const/16 v52, 0x1

    :goto_2
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v52, "CHM"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v52, "CTC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v52, "CHN"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_5

    const-string v52, "CHU"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_5

    const-string v52, "CTC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_5

    const-string v52, "CHM"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_5

    const-string v52, "CHC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_14

    :cond_5
    const/16 v52, 0x1

    :goto_3
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v52, "TGY"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_6

    const-string v52, "BRI"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_6

    const-string v52, "CWT"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_6

    const-string v52, "TWN"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_6

    const-string v52, "FET"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_6

    const-string v52, "ZZH"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_15

    :cond_6
    const/16 v52, 0x1

    :goto_4
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    const-string v52, "INU"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    const-string v52, "INS"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    const-string v52, "SWC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_7

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_7

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_16

    :cond_7
    const/16 v52, 0x1

    :goto_5
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    const-string v52, "DCM"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const-string v52, "SKT"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_8

    const-string v52, "SKC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_8

    const-string v52, "SKO"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_17

    :cond_8
    const/16 v52, 0x1

    :goto_6
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    const-string v52, "KTT"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_9

    const-string v52, "KTC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_9

    const-string v52, "KTO"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_18

    :cond_9
    const/16 v52, 0x1

    :goto_7
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const-string v52, "LGT"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_a

    const-string v52, "LUC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_a

    const-string v52, "LUO"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_19

    :cond_a
    const/16 v52, 0x1

    :goto_8
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    const-string v52, "ANY"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_b

    const-string v52, "KOO"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_1a

    :cond_b
    const/16 v52, 0x1

    :goto_9
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_c

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_c

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_c

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_1b

    :cond_c
    const/16 v52, 0x1

    :goto_a
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    const-string v52, "XAS"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_d

    const-string v52, "SPR"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_1c

    :cond_d
    const/16 v52, 0x1

    :goto_b
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    const-string v52, "VZW"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v49

    const-string v52, "VMU"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v47

    const-string v52, "BST"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v52, "USC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    const-string v52, "MTR"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    const-string v52, "ACG"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v52, "XAR"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v50

    const-string v52, "CRI"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v52, "TFN"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    const-string v52, "CSP"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v52, "LRA"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_e

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_e

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_e

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_e

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_e

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_e

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_1d

    :cond_e
    const/16 v52, 0x1

    :goto_c
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    const-string v52, "ATT"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_f

    const-string v52, "AIO"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_1e

    :cond_f
    const/16 v52, 0x1

    :goto_d
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v52, "TMB"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_10

    const-string v52, "TMK"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_1f

    :cond_10
    const/16 v52, 0x1

    :goto_e
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_11

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_11

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_11

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_11

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_11

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_11

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-nez v52, :cond_11

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v52

    if-eqz v52, :cond_20

    :cond_11
    const/16 v52, 0x1

    :goto_f
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v43

    const-string v52, "TEL"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_12

    const-string v52, "TLP"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_21

    :cond_12
    const/16 v52, 0x1

    :goto_10
    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    sget-object v52, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v53, "feature_aus"

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v36, :cond_1

    sget-object v52, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v53, "pending_outgoing_intent_only_tablet"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v52, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v53, "disable_record_button"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v54

    const-string v55, "CscFeature_VT_ConfigPrivacyPolicy"

    invoke-virtual/range {v54 .. v55}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-string v55, "record"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_13
    const/16 v52, 0x0

    goto/16 :goto_2

    :cond_14
    const/16 v52, 0x0

    goto/16 :goto_3

    :cond_15
    const/16 v52, 0x0

    goto/16 :goto_4

    :cond_16
    const/16 v52, 0x0

    goto/16 :goto_5

    :cond_17
    const/16 v52, 0x0

    goto/16 :goto_6

    :cond_18
    const/16 v52, 0x0

    goto/16 :goto_7

    :cond_19
    const/16 v52, 0x0

    goto/16 :goto_8

    :cond_1a
    const/16 v52, 0x0

    goto/16 :goto_9

    :cond_1b
    const/16 v52, 0x0

    goto/16 :goto_a

    :cond_1c
    const/16 v52, 0x0

    goto/16 :goto_b

    :cond_1d
    const/16 v52, 0x0

    goto/16 :goto_c

    :cond_1e
    const/16 v52, 0x0

    goto/16 :goto_d

    :cond_1f
    const/16 v52, 0x0

    goto/16 :goto_e

    :cond_20
    const/16 v52, 0x0

    goto/16 :goto_f

    :cond_21
    const/16 v52, 0x0

    goto :goto_10
.end method

.method public static putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
