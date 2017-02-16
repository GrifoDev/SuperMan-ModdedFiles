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

    .prologue
    const/4 v1, 0x0

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    .line 70
    const-class v0, Lcom/android/incallui/InCallUIFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    .line 72
    sput-object v1, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    .line 74
    sput-object v1, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    .line 76
    const-string v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallUIFeature;->omcSalesCode:Ljava/lang/String;

    .line 78
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallUIFeature;->buildcarrier:Ljava/lang/String;

    .line 80
    const-string v0, "ro.build.scafe.version"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallUIFeature;->scafe_version:Ljava/lang/String;

    .line 82
    sput-object v1, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    .line 84
    sput-object v1, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    .line 86
    sput-object v1, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    .line 88
    sput-object v1, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    return-void
.end method

.method public static getContactsPackageName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1593
    sget-object v4, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1594
    sget-object v4, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    .line 1620
    .local v1, "originalPackageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1597
    .end local v1    # "originalPackageName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v1, "com.android.contacts"

    .line 1598
    .restart local v1    # "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v6, "com.android.contacts"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1601
    .restart local v3    # "packageName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1602
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1604
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1605
    sput-object v3, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    .line 1619
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

    .line 1620
    sget-object v4, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    goto :goto_0

    .line 1607
    :cond_1
    sput-object v1, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    goto :goto_1

    .line 1611
    :cond_2
    :try_start_0
    sget-object v4, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1612
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1616
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_2
    sput-object v3, Lcom/android/incallui/InCallUIFeature;->sContactPackageName:Ljava/lang/String;

    goto :goto_1

    .line 1613
    :catch_0
    move-exception v0

    .line 1614
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v3, v1

    goto :goto_2
.end method

.method public static getMessagePackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1624
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1625
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    .line 1645
    :cond_0
    :goto_0
    return-object v1

    .line 1629
    :cond_1
    const-string v1, "com.android.mms"

    .line 1630
    .local v1, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    .line 1632
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

    .line 1634
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1640
    :try_start_0
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1641
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    goto :goto_0

    .line 1642
    :catch_0
    move-exception v0

    .line 1643
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-object v1, Lcom/android/incallui/InCallUIFeature;->sMessagePackageName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1433
    sget-object v0, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    return-object v0
.end method

.method public static hasFeature(Ljava/lang/String;)Z
    .locals 1
    .param p0, "feature"    # Ljava/lang/String;

    .prologue
    .line 1422
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1423
    :cond_0
    const/4 v0, 0x0

    .line 1425
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
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1541
    :try_start_0
    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1542
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 1543
    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    :cond_0
    const/4 v2, 0x1

    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v2

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasProximitySensor()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1566
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    const-string v5, "sensor"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 1567
    .local v2, "mSensorManager":Landroid/hardware/SensorManager;
    if-nez v2, :cond_0

    move v3, v4

    .line 1579
    :goto_0
    return v3

    .line 1570
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 1571
    .local v1, "mSensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-nez v1, :cond_1

    move v3, v4

    .line 1572
    goto :goto_0

    .line 1574
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1575
    const/16 v5, 0x8

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v5, v3, :cond_2

    .line 1576
    const/4 v3, 0x1

    goto :goto_0

    .line 1574
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v3, v4

    .line 1579
    goto :goto_0
.end method

.method public static hasPutUpDownMotionFeature(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1651
    const-string v0, "com.sec.feature.sensorhub"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasSystemFeature(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1552
    const/4 v0, 0x0

    .line 1554
    .local v0, "SystemSupport":Z
    :try_start_0
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1555
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 1556
    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1561
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

    .line 1562
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 1558
    :catch_0
    move-exception v1

    .line 1559
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static hasVibratorFeature()Z
    .locals 5

    .prologue
    .line 1583
    const/4 v0, 0x1

    .line 1584
    .local v0, "result":Z
    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 1585
    .local v1, "vibrator":Landroid/os/Vibrator;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1586
    :cond_0
    const/4 v0, 0x0

    .line 1588
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

    .line 1589
    return v0
.end method

.method public static isApplicationEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 1527
    const/4 v1, 0x0

    .line 1529
    .local v1, "enable":Z
    :try_start_0
    sget-object v4, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1530
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-boolean v1, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1536
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v1

    .line 1531
    :catch_0
    move-exception v0

    .line 1532
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 1535
    goto :goto_0

    .line 1533
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 1534
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isChineseLunarCalendar()Z
    .locals 4

    .prologue
    .line 1472
    const/4 v0, 0x0

    .line 1473
    .local v0, "result":Z
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

    .line 1474
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnablePuzzySearch"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1475
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1476
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBPMFSortList"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1477
    :cond_0
    const/4 v0, 0x1

    .line 1479
    :cond_1
    return v0
.end method

.method private static isEnableLunarCalendar(Ljava/lang/String;)Z
    .locals 2
    .param p0, "mEnableLunar"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1484
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isChineseLunarCalendar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return v0

    .line 1486
    :cond_1
    const-string v1, "KOREA"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHINA"

    .line 1487
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HKTW"

    .line 1488
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HONGKONG"

    .line 1489
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TAIWAN"

    .line 1490
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VI"

    .line 1491
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1494
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEnableNsdsServiceStatus()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1455
    const/4 v8, 0x0

    .line 1456
    .local v8, "result":Z
    invoke-static {}, Lcom/android/incallui/operator/usa/jansky/JanskyContract$Devices;->buildNsdsServiceStatusUri()Landroid/net/Uri;

    move-result-object v1

    .line 1457
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1458
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1459
    const-string v7, "1"

    .line 1460
    .local v7, "isEnable":Ljava/lang/String;
    const-string v0, "nsds_service_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1461
    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1462
    const/4 v8, 0x1

    .line 1464
    .end local v7    # "isEnable":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1465
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1467
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

    .line 1468
    return v8
.end method

.method public static isMultiSimConfigDsdaEnabled()Z
    .locals 2

    .prologue
    .line 1450
    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, "multiSimConfig":Ljava/lang/String;
    const-string v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isMultiSimConfigDsdsEnabled()Z
    .locals 2

    .prologue
    .line 1445
    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1446
    .local v0, "multiSimConfig":Ljava/lang/String;
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

    .prologue
    .line 1498
    const/4 v1, 0x1

    .line 1499
    .local v1, "csvtSupport":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_VT_ConfigBearer"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1500
    .local v0, "cscFeatures":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1501
    const-string v2, "-CSVT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1502
    const/4 v1, 0x0

    .line 1505
    :cond_0
    return v1
.end method

.method public static isSupportPSVT()Z
    .locals 3

    .prologue
    .line 1509
    const/4 v0, 0x0

    .line 1510
    .local v0, "psvtSupport":Z
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1511
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableLTEVideoCall"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1513
    :cond_0
    return v0
.end method

.method private static isSupportSmartCall(Ljava/lang/String;)Z
    .locals 5
    .param p0, "cscString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1517
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1518
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1519
    .local v0, "cscData":[Ljava/lang/String;
    const-string v3, "com.samsung.android.smartcallprovider"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v1

    .line 1520
    .local v1, "hasSmartCallProvider":Z
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

    .line 1523
    .end local v0    # "cscData":[Ljava/lang/String;
    .end local v1    # "hasSmartCallProvider":Z
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 1437
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1439
    const/4 v1, 0x1

    .line 1441
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeFeature(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 619
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/InCallUIFeature;->makeFeature(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 620
    return-void
.end method

.method public static makeFeature(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "decidedSalesCode"    # Ljava/lang/String;
    .param p2, "isSmartCall"    # Z

    .prologue
    const/4 v6, 0x1

    .line 623
    sput-object p0, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    .line 624
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    const-string v4, "makeFeature start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 626
    sput-object p1, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    .line 627
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_fake_operator"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_VoiceCall_ConfigOpStyleForVolte"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    .line 638
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_VoiceCall_ConfigOpStyleForHdIcon"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    .line 647
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForCommon()V

    .line 648
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForTablet()V

    .line 649
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForChina()V

    .line 650
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForIndia()V

    .line 651
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForHKTW()V

    .line 652
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForJapan()V

    .line 653
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForKor()V

    .line 654
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForUsa()V

    .line 655
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForCanada()V

    .line 656
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForLatin()V

    .line 657
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForVT()V

    .line 658
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForAfrica()V

    .line 659
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->makeFeatureForMassProject()V

    .line 660
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->TAG:Ljava/lang/String;

    const-string v4, "makeFeature end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
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

    .line 663
    if-eqz p2, :cond_0

    .line 664
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "support_smart_call"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    :cond_0
    return-void

    .line 628
    :cond_1
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->omcSalesCode:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 629
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->omcSalesCode:Ljava/lang/String;

    sput-object v3, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    goto :goto_0

    .line 631
    :cond_2
    invoke-static {}, Lcom/android/incallui/external/CscParser;->getInstance()Lcom/android/incallui/external/CscParser;

    move-result-object v0

    .line 632
    .local v0, "customerParser":Lcom/android/incallui/external/CscParser;
    const-string v3, "GeneralInfo"

    invoke-virtual {v0, v3}, Lcom/android/incallui/external/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 633
    .local v1, "generalInfoNode":Lorg/w3c/dom/Node;
    const-string v3, "SalesCode"

    invoke-virtual {v0, v1, v3}, Lcom/android/incallui/external/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 634
    .local v2, "salesCodeNode":Lorg/w3c/dom/Node;
    invoke-virtual {v0, v2}, Lcom/android/incallui/external/CscParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static makeFeatureForAfrica()V
    .locals 5

    .prologue
    .line 1398
    const-string v1, "ECT"

    sget-object v2, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1399
    .local v0, "isECT":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1406
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    const-string v1, "enabled"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1404
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

    .prologue
    .line 1331
    const-string v14, "RWC"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 1332
    .local v10, "isRWC":Ljava/lang/Boolean;
    const-string v14, "FMC"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1333
    .local v5, "isFMC":Ljava/lang/Boolean;
    const-string v14, "RWA"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1334
    .local v9, "isRWA":Ljava/lang/Boolean;
    const-string v14, "BMC"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1335
    .local v2, "isBMC":Ljava/lang/Boolean;
    const-string v14, "VTR"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1336
    .local v13, "isVTR":Ljava/lang/Boolean;
    const-string v14, "BMA"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1338
    .local v1, "isBMA":Ljava/lang/Boolean;
    const-string v14, "VMC"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 1339
    .local v12, "isVMC":Ljava/lang/Boolean;
    const-string v14, "BWA"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1340
    .local v3, "isBWA":Ljava/lang/Boolean;
    const-string v14, "TLS"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 1341
    .local v11, "isTLS":Ljava/lang/Boolean;
    const-string v14, "KDO"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1342
    .local v7, "isKDO":Ljava/lang/Boolean;
    const-string v14, "ESK"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1343
    .local v4, "isESK":Ljava/lang/Boolean;
    const-string v14, "GLW"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1344
    .local v6, "isGLW":Ljava/lang/Boolean;
    const-string v14, "MTA"

    sget-object v15, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1345
    .local v8, "isMTA":Ljava/lang/Boolean;
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

    .line 1361
    :goto_1
    return-void

    .line 1345
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 1349
    :cond_2
    sget-object v14, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "feature_can"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    const-string v14, "enabled"

    invoke-static {v14}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1353
    sget-object v14, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "canada_volte_ui"

    sget-object v16, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v17, "CANADA_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
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

    if-eqz v14, :cond_8

    :cond_3
    const/4 v14, 0x1

    :goto_2
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
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

    if-eqz v14, :cond_9

    :cond_4
    const/4 v14, 0x1

    :goto_3
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1356
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

    .line 1357
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

    .line 1358
    sget-object v14, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v15, "usa_gsm_volte_ui"

    const-string v16, "canada_volte_ui"

    invoke-static/range {v16 .. v16}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1360
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

    .line 1354
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1355
    :cond_9
    const/4 v14, 0x0

    goto :goto_3

    .line 1356
    :cond_a
    const/4 v14, 0x0

    goto :goto_4

    .line 1357
    :cond_b
    const/4 v14, 0x0

    goto :goto_5
.end method

.method public static makeFeatureForChina()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 965
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

    .line 966
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

    .line 965
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 969
    .local v0, "isCHN":Ljava/lang/Boolean;
    const-string v3, "CTC"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 972
    .local v2, "isCTC":Ljava/lang/Boolean;
    const-string v3, "CHM"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 974
    .local v1, "isCHNCMCC":Ljava/lang/Boolean;
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

    .line 1041
    :goto_2
    return-void

    .end local v0    # "isCHN":Ljava/lang/Boolean;
    .end local v1    # "isCHNCMCC":Ljava/lang/Boolean;
    .end local v2    # "isCTC":Ljava/lang/Boolean;
    :cond_2
    move v3, v4

    .line 966
    goto :goto_0

    .restart local v0    # "isCHN":Ljava/lang/Boolean;
    .restart local v1    # "isCHNCMCC":Ljava/lang/Boolean;
    .restart local v2    # "isCTC":Ljava/lang/Boolean;
    :cond_3
    move v3, v4

    .line 974
    goto :goto_1

    .line 979
    :cond_4
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_chn"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_ctc"

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
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

    .line 988
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

    .line 991
    const-string v3, "phone_number_locator"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 992
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "geo_description_disable"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
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

    .line 999
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

    .line 1002
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

    .line 1005
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

    .line 1008
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ctc_vip_mode"

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_multisim_preferred_sim"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "feature_multisim_display_sim_icon"

    const-string v7, "feature_multisim"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    const-string v3, "enabled"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1014
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

    .line 1015
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_voice_conference"

    const-string v7, "ims_voice_conference_cmcc"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "incoming_call_widget_for_volte"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_forwarding_number"

    .line 1018
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

    .line 1017
    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "show_conference_maximum_participants_toast"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "enable_conference_info_banner"

    const-string v7, "ims_voice_conference_cmcc"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    :cond_7
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "china_cdma_call"

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "chn_cdma_network_on_all_rat"

    const-string v7, "support_all_rat"

    invoke-static {v7}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
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

    .line 1028
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

    .line 1031
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

    .line 1032
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

    .line 1034
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

    .line 1036
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "support_sassistant"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "ims_rcs_bb"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
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

    .line 988
    goto/16 :goto_3

    :cond_b
    move v3, v4

    .line 1005
    goto/16 :goto_4

    :cond_c
    move v3, v4

    .line 1026
    goto/16 :goto_5
.end method

.method public static makeFeatureForCommon()V
    .locals 16

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 759
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "feature_prt"

    const-string v13, "PRT"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "feature_org"

    const-string v9, "OFR"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "SFR"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "FTM"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "FTB"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    :cond_0
    move v9, v11

    :goto_0
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_folder_hardkey"

    const-string v13, "com.sec.feature.folder_type"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_folder_single_lcd"

    const-string v13, "com.sec.feature.folder_type"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_bluetooth_multi_profile"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "hw_home_key"

    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mContext:Landroid/content/Context;

    .line 769
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v14, Lcom/android/incallui/wrapper/InternalRWrapper$bool;->config_showNavigationBar:I

    invoke-virtual {v9, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_d

    move v9, v11

    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 768
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_merge_call"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_conference_call"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "support_call_transfer"

    .line 775
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v14, "CscFeature_VoiceCall_DisableCallTransfer"

    invoke-virtual {v9, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    move v9, v11

    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 774
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_call_transfer_blind_ect"

    .line 777
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_VoiceCall_SupportImsBlindTransfer"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 776
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_all_rat"

    .line 779
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 778
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v12, "CscFeature_VoiceCall_ConfigRecording"

    invoke-virtual {v9, v12}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "configRecording":Ljava/lang/String;
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "voice_call_recording"

    const-string v9, "RecordingAllowed"

    .line 784
    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "RecordingAllowedByMenu"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    :cond_1
    move v9, v11

    :goto_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 783
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "notice_sound_for_voice_recording"

    const-string v13, "NoticeSound"

    .line 786
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v14

    const-string v15, "CscFeature_VoiceCall_ConfigNoticeSoundForVoiceRecording"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 785
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "hac_enable"

    .line 788
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Setting_SupportHAC"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 787
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "bike_mode"

    .line 792
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "bikemode"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 791
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "voice_call_recording_menu"

    const-string v13, "RecordingAllowedByMenu"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "voice_call_recording_button"

    const-string v9, "voice_call_recording"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    const-string v9, "voice_call_recording_menu"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    move v9, v11

    :goto_4
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "use_action_memo_duringcall"

    const-string v9, "SEC_FLOATING_FEATURE_VOICECALL_SUPPORT_ACTION_MEMO"

    .line 796
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.sec.feature.spen_usp"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_2
    move v9, v11

    :goto_5
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 795
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_outgoing_dialer_animation"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_incoming_call_widget_clear_flick_effect"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_cover_extra_size"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->buildcarrier:Ljava/lang/String;

    const-string v14, "hero2"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_ims_conference_split"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_VoiceCall_SupportImsConfSplit"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_clear_inner_circle_widget"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "enabled"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "display_hd_icon"

    sget-object v9, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v14, "NOHD"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_12

    move v9, v11

    :goto_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "display_cshd_icon"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v14, "_CSHD"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "not_support_switch_button"

    .line 808
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_VoiceCall_DisableSwitchButton"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 807
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "not_support_addcall_button"

    .line 810
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_VoiceCall_DisableAddcallButton"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 809
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "show_switch_icon_in_button"

    .line 812
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isSupportPSVT()Z

    move-result v9

    if-eqz v9, :cond_13

    const-string v9, "not_support_switch_button"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    move v9, v11

    :goto_7
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 811
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "show_reminder_button"

    const-string v13, "com.samsung.android.app.reminder"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_vowifi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v12, "CscFeature_VoiceCall_SupportShowVowifiEndCall"

    invoke-virtual {v9, v12, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 818
    .local v8, "showVoWifiEndCall":Z
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "show_vowifi_endcall_button"

    if-eqz v8, :cond_14

    const-string v9, "support_vowifi"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    move v9, v11

    :goto_8
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "show_vowifi_incomingcall_button"

    if-eqz v8, :cond_15

    const-string v9, "support_vowifi"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    move v9, v11

    :goto_9
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "show_vowifi_voicecall_button"

    const-string v9, "feature_prt"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "SER"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    :cond_3
    const-string v9, "support_vowifi"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    move v9, v11

    :goto_a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v12, "CscFeature_Contact_ConfigImsOpStyle"

    invoke-virtual {v9, v12}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 823
    .local v7, "opStyle":Ljava/lang/String;
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "support_gray_screen"

    const-string v9, "SEC_FLOATING_FEATURE_LCD_SUPPORT_MDNIE_HW"

    .line 824
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    const-string v9, "SEC_FLOATING_FEATURE_LCD_SUPPORT_AMOLED_DISPLAY"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_17

    move v9, v11

    :goto_b
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 823
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "hide_vt_button_during_unsupported"

    sget-object v9, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v14, "KOR_"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    sget-object v9, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v14, "JPN_"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_18

    move v9, v11

    :goto_c
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "personal_vibration"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->hasVibratorFeature()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "disable_incoming_call_popup_during_camera"

    .line 830
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v14, "CscFeature_Camera_EnableCameraDuringCall"

    invoke-virtual {v9, v14, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_19

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v9

    if-nez v9, :cond_19

    move v9, v11

    :goto_d
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 829
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_onehand_operation"

    const-string v13, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ONE_HANDED_INPUT_GUI"

    .line 832
    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 831
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_mobile_keyboard"

    const-string v13, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    .line 834
    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 833
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "disable_call"

    .line 836
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v14, "CscFeature_RIL_ConfigPsOnlyList"

    invoke-virtual {v9, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1a

    move v9, v11

    :goto_e
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 835
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "people_stripe"

    const-string v13, "com.sec.feature.people_edge_notification"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "lock_screen_during_call"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->hasProximitySensor()Z

    move-result v9

    if-nez v9, :cond_1b

    move v9, v11

    :goto_f
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "ims_callplus"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 842
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "ims_crane"

    .line 843
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "RCS_CPR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 842
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "ims_rcs"

    .line 845
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v14, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v9, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const-string v9, "BMC"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    .line 846
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    const-string v9, "VMC"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    .line 847
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v14, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v9, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "BASIC_PROFILE"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1c

    move v9, v11

    .line 845
    :goto_10
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 844
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "ims_rcs_bb"

    .line 849
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_IMS_ConfigRcsFeatures"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "PARTIAL_BRANDED"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 848
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "ims_capability_check_on_call_end"

    .line 851
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_VoiceCall_SupportImsCapabilityOnCallEnd"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 850
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "handle_sip_error_code"

    const-string v9, "PHN"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    .line 853
    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "NEE"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "XFV"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    :cond_4
    move v9, v11

    :goto_11
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 852
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string v9, "ATL"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "AVF"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "CNX"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "CYV"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "MOB"

    .line 856
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "MTL"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "OMN"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "SIM"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "SWC"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "TCL"

    .line 857
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VD2"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VDC"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VDF"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VDH"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VDI"

    .line 858
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VGR"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VIP"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VOD"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "XFV"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VDR"

    .line 859
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VDP"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VOP"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "SFR"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "TOP"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "FTM"

    .line 860
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    :cond_5
    move v0, v11

    .line 861
    .local v0, "blockVTButton":Z
    :goto_12
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "block_vt_outgoing"

    if-eqz v0, :cond_1f

    const-string v9, "ims_rcs"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    move v9, v11

    :goto_13
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "BLOCK_VT_DURING_PS_CALL"

    const-string v13, "EVR"

    sget-object v14, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    const-string v9, "enabled"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 867
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "default_volte"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "thl_volte_ui"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v14, "THL_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "evr_volte_ui"

    sget-object v13, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v14, "EVR_"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v12, "SIN_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v12, "STH_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v12, "XSP_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v12, "MM1_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_20

    :cond_6
    move v5, v11

    .line 871
    .local v5, "isSingaporeVolte":Z
    :goto_14
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "singapore_volte_ui"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    .end local v5    # "isSingaporeVolte":Z
    :cond_7
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v12, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v9, v12}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 876
    .local v6, "mEnableLunar":Ljava/lang/String;
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_lunar_birthday"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->isEnableLunarCalendar(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "default_caller_information"

    .line 878
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v14, "CscFeature_VoiceCall_ConfigOpStyleForIncomingCall"

    invoke-virtual {v9, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "CALLERINFOCARD_DEFAULT_OFF"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_21

    move v9, v11

    :goto_15
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 877
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "smart_ivr_callerid_info"

    .line 880
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_VoiceCall_SupportSmartIvr"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 879
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "geo_description_disable"

    .line 882
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_VoiceCall_DisableGeoDescription"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 881
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "disable_format_number"

    .line 884
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 883
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "show_forwarding_number"

    .line 886
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_VoiceCall_ConfigOpStyleForCallerId"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "forwarding_number"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 885
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "eri_info_label_enable"

    .line 888
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string v14, "CscFeature_VoiceCall_ConfigOpStyleForCallerId"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "ERI"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 887
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "support_safetycare"

    const-string v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    .line 892
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    .line 893
    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    :cond_8
    move v9, v11

    .line 891
    :goto_16
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "game_no_interruption"

    .line 895
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v14, "CscFeature_VoiceCall_DisableGameOnlyMode"

    invoke-virtual {v9, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_23

    move v9, v11

    :goto_17
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 894
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "contextservice_enable_survey_mode"

    const-string v13, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    .line 897
    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 896
    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "support_spam_call"

    .line 899
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v14, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v9, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "DELAYEDRING"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 900
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v14, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v9, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "REJECT"

    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_24

    :cond_9
    move v9, v11

    .line 899
    :goto_18
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 898
    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_spam_call_report"

    const-string v13, "support_spam_call"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v12, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v9, v12}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, "cscSmartCall":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 904
    const-string v9, "/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "cscSmartCallData":[Ljava/lang/String;
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_smart_call"

    aget-object v13, v3, v10

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->isSupportSmartCall(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v9, "support_smart_call"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    aget-object v9, v3, v10

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 907
    aget-object v9, v3, v10

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 908
    .local v4, "cscSmartCallProvider":[Ljava/lang/String;
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_smart_call_whitepage"

    const-string v13, "whitepages"

    aget-object v14, v4, v11

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_smart_call_whowho"

    const-string v13, "whowho"

    aget-object v14, v4, v11

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    .end local v3    # "cscSmartCallData":[Ljava/lang/String;
    .end local v4    # "cscSmartCallProvider":[Ljava/lang/String;
    :cond_a
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "support_knox_desktop"

    const-string v13, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_KNOX_DESKTOP"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "feature_multisim"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isMultiSimConfigDsdsEnabled()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v9

    if-eqz v9, :cond_25

    :cond_b
    move v9, v11

    :goto_19
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "feature_multisim_dsda"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isMultiSimConfigDsdaEnabled()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "feature_multisim_preferred_sim"

    const-string v13, "feature_multisim"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "feature_multisim_adaptive_callback"

    const-string v13, "feature_multisim"

    invoke-static {v13}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    sget-object v12, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v13, "qcom_cross_mapping"

    const-string v9, "feature_multisim"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v14, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v9, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_26

    move v9, v11

    :goto_1a
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v12, "samsung_screen_timeout_incall"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "end_call_when_dial_e911"

    .line 927
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

    .line 926
    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "noble_enable_grace_ux"

    sget-object v12, Lcom/android/incallui/InCallUIFeature;->buildcarrier:Ljava/lang/String;

    const-string v13, "noblelte"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    sget-object v9, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v11, "show_local_time"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    return-void

    .end local v0    # "blockVTButton":Z
    .end local v1    # "configRecording":Ljava/lang/String;
    .end local v2    # "cscSmartCall":Ljava/lang/String;
    .end local v6    # "mEnableLunar":Ljava/lang/String;
    .end local v7    # "opStyle":Ljava/lang/String;
    .end local v8    # "showVoWifiEndCall":Z
    :cond_c
    move v9, v10

    .line 762
    goto/16 :goto_0

    :cond_d
    move v9, v10

    .line 769
    goto/16 :goto_1

    :cond_e
    move v9, v10

    .line 775
    goto/16 :goto_2

    .restart local v1    # "configRecording":Ljava/lang/String;
    :cond_f
    move v9, v10

    .line 784
    goto/16 :goto_3

    :cond_10
    move v9, v10

    .line 794
    goto/16 :goto_4

    :cond_11
    move v9, v10

    .line 796
    goto/16 :goto_5

    :cond_12
    move v9, v10

    .line 805
    goto/16 :goto_6

    :cond_13
    move v9, v10

    .line 812
    goto/16 :goto_7

    .restart local v8    # "showVoWifiEndCall":Z
    :cond_14
    move v9, v10

    .line 818
    goto/16 :goto_8

    :cond_15
    move v9, v10

    .line 819
    goto/16 :goto_9

    :cond_16
    move v9, v10

    .line 820
    goto/16 :goto_a

    .restart local v7    # "opStyle":Ljava/lang/String;
    :cond_17
    move v9, v10

    .line 824
    goto/16 :goto_b

    :cond_18
    move v9, v10

    .line 825
    goto/16 :goto_c

    :cond_19
    move v9, v10

    .line 830
    goto/16 :goto_d

    :cond_1a
    move v9, v10

    .line 836
    goto/16 :goto_e

    :cond_1b
    move v9, v10

    .line 838
    goto/16 :goto_f

    :cond_1c
    move v9, v10

    .line 847
    goto/16 :goto_10

    :cond_1d
    move v9, v10

    .line 853
    goto/16 :goto_11

    :cond_1e
    move v0, v10

    .line 860
    goto/16 :goto_12

    .restart local v0    # "blockVTButton":Z
    :cond_1f
    move v9, v10

    .line 861
    goto/16 :goto_13

    :cond_20
    move v5, v10

    .line 870
    goto/16 :goto_14

    .restart local v6    # "mEnableLunar":Ljava/lang/String;
    :cond_21
    move v9, v10

    .line 878
    goto/16 :goto_15

    :cond_22
    move v9, v10

    .line 893
    goto/16 :goto_16

    :cond_23
    move v9, v10

    .line 895
    goto/16 :goto_17

    :cond_24
    move v9, v10

    .line 900
    goto/16 :goto_18

    .restart local v2    # "cscSmartCall":Ljava/lang/String;
    :cond_25
    move v9, v10

    .line 915
    goto/16 :goto_19

    :cond_26
    move v9, v10

    .line 920
    goto/16 :goto_1a
.end method

.method public static makeFeatureForHKTW()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1045
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

    .line 1046
    .local v0, "isHKTW":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1067
    :goto_1
    return-void

    .end local v0    # "isHKTW":Ljava/lang/Boolean;
    :cond_1
    move v1, v2

    .line 1045
    goto :goto_0

    .line 1050
    .restart local v0    # "isHKTW":Ljava/lang/Boolean;
    :cond_2
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "feature_hktw"

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    const-string v1, "enabled"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1054
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "incoming_call_widget_for_volte"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
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

    .line 1060
    :cond_5
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "chn_cdma_network_on_all_rat"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "china_cdma_call"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "ctc_call_time_duration"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v2, "ctc_call_time_duration_for_six_mode"

    const-string v3, "support_all_rat"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
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

    .line 1066
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

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 947
    const-string v3, "INU"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 948
    .local v1, "isINU":Ljava/lang/Boolean;
    const-string v3, "INS"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 949
    .local v0, "isINS":Ljava/lang/Boolean;
    const-string v3, "SWC"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 951
    .local v2, "isSWC":Ljava/lang/Boolean;
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

    .line 961
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v4

    .line 951
    goto :goto_0

    .line 954
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

    .line 955
    const-string v3, "enabled"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 957
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

    .line 959
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v6, "incoming_call_widget_for_volte"

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    move v4, v5

    :cond_7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    move v3, v4

    .line 954
    goto :goto_2

    :cond_9
    move v3, v4

    .line 957
    goto :goto_3
.end method

.method public static makeFeatureForJapan()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1070
    const-string v3, "DCM"

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1071
    .local v0, "isDCM":Ljava/lang/Boolean;
    const-string v3, "KDI"

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1072
    .local v1, "isKDI":Ljava/lang/Boolean;
    const-string v3, "SBM"

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1074
    .local v2, "isSBM":Ljava/lang/Boolean;
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

    .line 1120
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v3, v4

    .line 1074
    goto :goto_0

    .line 1078
    :cond_3
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_dcm"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_kdi"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "feature_sbm"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_packagename_for_fullscreen_incoming_call"

    .line 1084
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

    .line 1083
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "show_forwarding_number"

    .line 1087
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

    .line 1086
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_end_call_time_blink_extension"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
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

    .line 1096
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

    .line 1099
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "dcm_sda_support_feature"

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1103
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_conference_call"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "support_merge_call"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    :cond_4
    const-string v3, "enabled"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1109
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

    .line 1110
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "ims_voice_conference"

    const-string v5, "ims_voice_conference_kddi"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "show_switch_icon_in_button"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "handle_sip_error_code"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "handle_sip_error_code_dcm"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v3, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v4, "incoming_call_widget_for_volte"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
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

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1123
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

    .line 1124
    .local v4, "isSKT":Ljava/lang/Boolean;
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

    .line 1125
    .local v1, "isKTT":Ljava/lang/Boolean;
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

    .line 1126
    .local v3, "isLGT":Ljava/lang/Boolean;
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

    .line 1127
    .local v2, "isKorOpen":Ljava/lang/Boolean;
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

    .line 1129
    .local v0, "isKOR":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_a

    .line 1205
    :goto_5
    return-void

    .end local v0    # "isKOR":Ljava/lang/Boolean;
    .end local v1    # "isKTT":Ljava/lang/Boolean;
    .end local v2    # "isKorOpen":Ljava/lang/Boolean;
    .end local v3    # "isLGT":Ljava/lang/Boolean;
    .end local v4    # "isSKT":Ljava/lang/Boolean;
    :cond_5
    move v5, v6

    .line 1123
    goto/16 :goto_0

    .restart local v4    # "isSKT":Ljava/lang/Boolean;
    :cond_6
    move v5, v6

    .line 1124
    goto :goto_1

    .restart local v1    # "isKTT":Ljava/lang/Boolean;
    :cond_7
    move v5, v6

    .line 1125
    goto :goto_2

    .restart local v3    # "isLGT":Ljava/lang/Boolean;
    :cond_8
    move v5, v6

    .line 1126
    goto :goto_3

    .restart local v2    # "isKorOpen":Ljava/lang/Boolean;
    :cond_9
    move v5, v6

    .line 1127
    goto :goto_4

    .line 1132
    .restart local v0    # "isKOR":Ljava/lang/Boolean;
    :cond_a
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor"

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_skt"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_ktt"

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_lgt"

    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "feature_kor_open"

    invoke-virtual {v5, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v8, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "support_tphone"

    const-string v5, "tphone"

    .line 1141
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "com.skt.prod.phone"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v5, v7

    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1140
    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_tgroupon"

    const-string v9, "com.skt.tgroupon"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_twophone"

    .line 1144
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_SupportTwoPhoneService"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1143
    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
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

    .line 1146
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

    .line 1149
    sget-object v8, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "roaming_auto_dial"

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_b
    move v5, v7

    :goto_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    const-string v5, "enabled"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1153
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "auto_call_test"

    const-string v9, "eng"

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_call_message"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "common_volte_kor"

    sget-object v9, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v10, "KOR_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    :cond_c
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "handle_sip_error_code"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isSupportPSVT()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    const-string v5, "common_volte_kor"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1161
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "disable_add_call"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
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

    .line 1163
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "show_switch_icon_on_callcard"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    sget-object v8, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "show_switch_icon_in_button"

    const-string v5, "show_switch_icon_on_callcard"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    move v5, v7

    :goto_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    :cond_d
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

    .line 1167
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

    .line 1169
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "ims_support_photo_ring"

    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
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

    .line 1173
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1174
    :cond_e
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_conference_call"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    :cond_f
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_merge_call"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "block_data_during_call"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
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

    .line 1182
    sget-object v8, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "government_request_project"

    const-string v5, "feature_kor_open"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-string v5, "com.android.email"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "com.google.android.gm"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    move v5, v7

    :goto_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "clear_dialpad_digits"

    sget-object v9, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v10, "KOR_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
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

    .line 1185
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "support_nsri_secure"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v8, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v9, "display_uhd_voice_icon"

    const-string v5, "enabled"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    sget-object v5, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v10, "LGU_UHD"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    move v5, v7

    :goto_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "cnap_supplementary_service"

    .line 1192
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

    .line 1191
    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "cdnip_supplementary_service"

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
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

    .line 1196
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

    .line 1198
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "smart_auto_answering"

    invoke-virtual {v5, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v8, "single_lte"

    const-string v9, "government_request_project"

    invoke-static {v9}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 1201
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_VoiceCall_SupportSingleLTE"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1200
    :cond_10
    :goto_b
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ims_rcs"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v5, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v7, "ims_rcs_bb"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_11
    move v5, v6

    .line 1141
    goto/16 :goto_6

    :cond_12
    move v5, v6

    .line 1149
    goto/16 :goto_7

    :cond_13
    move v5, v6

    .line 1164
    goto/16 :goto_8

    :cond_14
    move v5, v6

    .line 1182
    goto/16 :goto_9

    :cond_15
    move v5, v6

    .line 1188
    goto/16 :goto_a

    :cond_16
    move v7, v6

    .line 1201
    goto :goto_b
.end method

.method public static makeFeatureForLatin()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1364
    const-string v2, "ro.csc.countryiso_code"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1367
    .local v0, "countryiso_code":Ljava/lang/String;
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

    .line 1368
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

    .line 1369
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

    .line 1370
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

    .line 1371
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

    .line 1367
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1373
    .local v1, "isLatin":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1395
    :goto_1
    return-void

    .end local v1    # "isLatin":Ljava/lang/Boolean;
    :cond_1
    move v2, v3

    .line 1371
    goto :goto_0

    .line 1377
    .restart local v1    # "isLatin":Ljava/lang/Boolean;
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

    .line 1378
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

    .line 1379
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

    .line 1381
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

    .line 1382
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

    .line 1383
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

    .line 1384
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

    .line 1386
    sget-object v2, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v5, "display_ufn_hd_voice_icon"

    sget-object v6, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v7, "UFN_HD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
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

    .line 1390
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_4

    .line 1391
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

    .line 1393
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

    .line 1394
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

    .line 1384
    goto/16 :goto_2
.end method

.method public static makeFeatureForMassProject()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1409
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

    .line 1410
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

    .line 1409
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1412
    .local v0, "isMassProject":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1419
    :goto_1
    return-void

    .end local v0    # "isMassProject":Ljava/lang/Boolean;
    :cond_1
    move v1, v2

    .line 1410
    goto :goto_0

    .line 1415
    .restart local v0    # "isMassProject":Ljava/lang/Boolean;
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

    .line 1416
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "support_mobile_keyboard"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_callplus"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    sget-object v1, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "ims_support_multimedia_caller_id"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static makeFeatureForTablet()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 935
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    :goto_0
    return-void

    .line 939
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_device"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v3, "tablet_fullscreen_mode"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
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

    .line 942
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

    .line 941
    goto :goto_1

    :cond_2
    move v1, v2

    .line 942
    goto :goto_2
.end method

.method public static makeFeatureForUsa()V
    .locals 31

    .prologue
    .line 1209
    const-string v26, "XAS"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 1210
    .local v24, "isXAS":Ljava/lang/Boolean;
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

    .line 1212
    .local v14, "isSPR":Ljava/lang/Boolean;
    const-string v26, "VZW"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 1214
    .local v22, "isVZW":Ljava/lang/Boolean;
    const-string v26, "VMU"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 1215
    .local v21, "isVMU":Ljava/lang/Boolean;
    const-string v26, "BST"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 1216
    .local v5, "isBST":Ljava/lang/Boolean;
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

    .line 1217
    .local v16, "isSPR_M":Ljava/lang/Boolean;
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

    .line 1219
    .local v15, "isSPR_F":Ljava/lang/Boolean;
    const-string v26, "USC"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    .line 1220
    .local v20, "isUSCC":Ljava/lang/Boolean;
    const-string v26, "MTR"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 1221
    .local v12, "isMPCS":Ljava/lang/Boolean;
    const-string v26, "ACG"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1222
    .local v3, "isACG":Ljava/lang/Boolean;
    const-string v26, "XAR"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 1223
    .local v23, "isXAR":Ljava/lang/Boolean;
    const-string v26, "CRI"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 1224
    .local v8, "isCRI":Ljava/lang/Boolean;
    const-string v26, "TFN"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 1225
    .local v17, "isTFN":Ljava/lang/Boolean;
    const-string v26, "CSP"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1226
    .local v9, "isCSP":Ljava/lang/Boolean;
    const-string v26, "LRA"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 1227
    .local v11, "isLRA":Ljava/lang/Boolean;
    const-string v26, "CCT"

    sget-object v27, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1228
    .local v6, "isCCT":Ljava/lang/Boolean;
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

    .line 1231
    .local v13, "isREG":Ljava/lang/Boolean;
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

    .line 1235
    .local v4, "isATT":Ljava/lang/Boolean;
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

    .line 1237
    .local v18, "isTMO":Ljava/lang/Boolean;
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

    .line 1238
    .local v7, "isCDMA_US":Ljava/lang/Boolean;
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

    .line 1240
    .local v10, "isGSM_US":Ljava/lang/Boolean;
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

    .line 1242
    .local v19, "isUSA":Ljava/lang/Boolean;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_12

    .line 1328
    :goto_9
    return-void

    .line 1210
    .end local v3    # "isACG":Ljava/lang/Boolean;
    .end local v4    # "isATT":Ljava/lang/Boolean;
    .end local v5    # "isBST":Ljava/lang/Boolean;
    .end local v6    # "isCCT":Ljava/lang/Boolean;
    .end local v7    # "isCDMA_US":Ljava/lang/Boolean;
    .end local v8    # "isCRI":Ljava/lang/Boolean;
    .end local v9    # "isCSP":Ljava/lang/Boolean;
    .end local v10    # "isGSM_US":Ljava/lang/Boolean;
    .end local v11    # "isLRA":Ljava/lang/Boolean;
    .end local v12    # "isMPCS":Ljava/lang/Boolean;
    .end local v13    # "isREG":Ljava/lang/Boolean;
    .end local v14    # "isSPR":Ljava/lang/Boolean;
    .end local v15    # "isSPR_F":Ljava/lang/Boolean;
    .end local v16    # "isSPR_M":Ljava/lang/Boolean;
    .end local v17    # "isTFN":Ljava/lang/Boolean;
    .end local v18    # "isTMO":Ljava/lang/Boolean;
    .end local v19    # "isUSA":Ljava/lang/Boolean;
    .end local v20    # "isUSCC":Ljava/lang/Boolean;
    .end local v21    # "isVMU":Ljava/lang/Boolean;
    .end local v22    # "isVZW":Ljava/lang/Boolean;
    .end local v23    # "isXAR":Ljava/lang/Boolean;
    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1216
    .restart local v5    # "isBST":Ljava/lang/Boolean;
    .restart local v14    # "isSPR":Ljava/lang/Boolean;
    .restart local v21    # "isVMU":Ljava/lang/Boolean;
    .restart local v22    # "isVZW":Ljava/lang/Boolean;
    :cond_a
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 1217
    .restart local v16    # "isSPR_M":Ljava/lang/Boolean;
    :cond_b
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 1228
    .restart local v3    # "isACG":Ljava/lang/Boolean;
    .restart local v6    # "isCCT":Ljava/lang/Boolean;
    .restart local v8    # "isCRI":Ljava/lang/Boolean;
    .restart local v9    # "isCSP":Ljava/lang/Boolean;
    .restart local v11    # "isLRA":Ljava/lang/Boolean;
    .restart local v12    # "isMPCS":Ljava/lang/Boolean;
    .restart local v15    # "isSPR_F":Ljava/lang/Boolean;
    .restart local v17    # "isTFN":Ljava/lang/Boolean;
    .restart local v20    # "isUSCC":Ljava/lang/Boolean;
    .restart local v23    # "isXAR":Ljava/lang/Boolean;
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1231
    .restart local v13    # "isREG":Ljava/lang/Boolean;
    :cond_d
    const/16 v26, 0x0

    goto :goto_4

    .line 1235
    .restart local v4    # "isATT":Ljava/lang/Boolean;
    :cond_e
    const/16 v26, 0x0

    goto :goto_5

    .line 1237
    .restart local v18    # "isTMO":Ljava/lang/Boolean;
    :cond_f
    const/16 v26, 0x0

    goto :goto_6

    .line 1238
    .restart local v7    # "isCDMA_US":Ljava/lang/Boolean;
    :cond_10
    const/16 v26, 0x0

    goto :goto_7

    .line 1240
    .restart local v10    # "isGSM_US":Ljava/lang/Boolean;
    :cond_11
    const/16 v26, 0x0

    goto :goto_8

    .line 1245
    .restart local v19    # "isUSA":Ljava/lang/Boolean;
    :cond_12
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_usa"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "samsung_screen_timeout_incall"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "popup_call_service_has_icon"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "ecid_enable"

    .line 1251
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

    .line 1250
    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "usa_cdma_emergency_concept"

    const-string v28, "ENABLE"

    .line 1256
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v29

    const-string v30, "CscFeature_VoiceCall_ConfigOpStyleForEmergencyCdma"

    invoke-virtual/range {v29 .. v30}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 1255
    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
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

    .line 1259
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

    .line 1260
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

    .line 1261
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "tmo_echolocate_logger_setting"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
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

    .line 1265
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

    .line 1268
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_spr"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
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

    .line 1270
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "spr_display_hd_icon"

    sget-object v28, Lcom/android/incallui/InCallUIFeature;->opStyleForHDicon:Ljava/lang/String;

    const-string v29, "SPR_HD"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
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

    .line 1274
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

    .line 1275
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

    .line 1276
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "abbreviated_dialing_codes_table_sprint"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "abbreviated_dialing_codes_table_virgin"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "abbreviated_dialing_codes_table_boost"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_usc"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
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

    .line 1286
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

    .line 1287
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_vzw"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_att"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "feature_tmo"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    const-string v26, "enabled"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1a

    .line 1297
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v26

    const-string v27, "CscFeature_VoiceCall_ConfigOpStyleForMvno"

    invoke-virtual/range {v26 .. v27}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1298
    .local v25, "opStyleForMvno":Ljava/lang/String;
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

    .line 1299
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "vzw_volte_ui_conf"

    const-string v28, "vzw_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "usc_volte_ui"

    sget-object v28, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v29, "USC_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1301
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

    .line 1302
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

    .line 1303
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "mpcs_volte_ui"

    sget-object v28, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v29, "MTR_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1304
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "us_volte_ui"

    sget-object v28, Lcom/android/incallui/InCallUIFeature;->opStyleForVolte:Ljava/lang/String;

    const-string v29, "USA_"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
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

    .line 1306
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "incoming_call_widget_for_volte"

    const-string v28, "us_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
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

    .line 1308
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

    .line 1309
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "video_connected_as_voice"

    const-string v28, "att_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "enable_conference_info_banner"

    const-string v28, "vzw_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
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

    .line 1312
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "ims_voice_conference"

    const-string v28, "ims_voice_conference_vzw"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "ims_only_conf_initiator_can_merge"

    const-string v28, "ims_voice_conference_vzw"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    sget-object v27, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v28, "spr_vowifi_ui"

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_23

    .line 1315
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

    .line 1314
    :goto_11
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
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

    .line 1319
    .end local v25    # "opStyleForMvno":Ljava/lang/String;
    :cond_1a
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "ims_rcs"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
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

    .line 1322
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "show_switch_icon_in_button"

    const-string v28, "usa_gsm_volte_ui"

    invoke-static/range {v28 .. v28}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
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

    .line 1326
    sget-object v26, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v27, "support_softphone"

    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
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

    const-string v26, "multiend_point"

    invoke-static/range {v26 .. v26}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_25

    :cond_1b
    const/16 v26, 0x1

    :goto_13
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 1259
    :cond_1c
    const/16 v26, 0x0

    goto/16 :goto_a

    .line 1275
    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_b

    .line 1298
    .restart local v25    # "opStyleForMvno":Ljava/lang/String;
    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_c

    .line 1301
    :cond_1f
    const/16 v26, 0x0

    goto/16 :goto_d

    .line 1302
    :cond_20
    const/16 v26, 0x0

    goto/16 :goto_e

    .line 1305
    :cond_21
    const/16 v26, 0x0

    goto/16 :goto_f

    .line 1307
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_10

    .line 1315
    :cond_23
    const/16 v26, 0x0

    goto/16 :goto_11

    .line 1316
    :cond_24
    const/16 v26, 0x0

    goto/16 :goto_12

    .line 1327
    .end local v25    # "opStyleForMvno":Ljava/lang/String;
    :cond_25
    const/16 v26, 0x0

    goto :goto_13
.end method

.method public static makeFeatureForVT()V
    .locals 56

    .prologue
    .line 669
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isSupportCSVT()Z

    move-result v36

    .line 670
    .local v36, "isSupportCSVT":Z
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isSupportPSVT()Z

    move-result v37

    .line 672
    .local v37, "isSupportPSVT":Z
    sget-object v52, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v53, "psvt_support"

    invoke-static/range {v37 .. v37}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    sget-object v52, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v53, "csvt_supprt"

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
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

    .line 676
    const-string v52, "vicommon_enabled"

    invoke-static/range {v52 .. v52}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v52

    if-nez v52, :cond_3

    .line 755
    :cond_1
    :goto_1
    return-void

    .line 674
    :cond_2
    const/16 v52, 0x0

    goto :goto_0

    .line 679
    :cond_3
    const-string v52, "VIA"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v45

    .line 681
    .local v45, "isVIA":Ljava/lang/Boolean;
    const-string v52, "TUR"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    .line 683
    .local v41, "isTUR":Ljava/lang/Boolean;
    const-string v52, "RWC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    .line 684
    .local v32, "isRWC":Ljava/lang/Boolean;
    const-string v52, "FMC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 685
    .local v17, "isFMC":Ljava/lang/Boolean;
    const-string v52, "RWA"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    .line 686
    .local v31, "isRWA":Ljava/lang/Boolean;
    const-string v52, "BMC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 687
    .local v6, "isBMC":Ljava/lang/Boolean;
    const-string v52, "VTR"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    .line 688
    .local v48, "isVTR":Ljava/lang/Boolean;
    const-string v52, "BMA"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 689
    .local v5, "isBMA":Ljava/lang/Boolean;
    const-string v52, "VMC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    .line 690
    .local v46, "isVMC":Ljava/lang/Boolean;
    const-string v52, "BWA"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 691
    .local v8, "isBWA":Ljava/lang/Boolean;
    const-string v52, "TLS"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v39

    .line 692
    .local v39, "isTLS":Ljava/lang/Boolean;
    const-string v52, "KDO"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    .line 693
    .local v23, "isKDO":Ljava/lang/Boolean;
    const-string v52, "ESK"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 694
    .local v16, "isESK":Ljava/lang/Boolean;
    const-string v52, "GLW"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 695
    .local v18, "isGLW":Ljava/lang/Boolean;
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

    .line 698
    .local v9, "isCAN":Ljava/lang/Boolean;
    const-string v52, "CHM"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 699
    .local v11, "isCHNCMCC":Ljava/lang/Boolean;
    const-string v52, "CTC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 700
    .local v14, "isCTC":Ljava/lang/Boolean;
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

    .line 703
    .local v10, "isCHN":Ljava/lang/Boolean;
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

    .line 706
    .local v19, "isHKTW":Ljava/lang/Boolean;
    const-string v52, "INU"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 707
    .local v22, "isINU":Ljava/lang/Boolean;
    const-string v52, "INS"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 708
    .local v21, "isINS":Ljava/lang/Boolean;
    const-string v52, "SWC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    .line 709
    .local v35, "isSWC":Ljava/lang/Boolean;
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

    .line 712
    .local v20, "isIND":Ljava/lang/Boolean;
    const-string v52, "DCM"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 715
    .local v15, "isDCM":Ljava/lang/Boolean;
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

    .line 716
    .local v33, "isSKT":Ljava/lang/Boolean;
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

    .line 717
    .local v25, "isKTT":Ljava/lang/Boolean;
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

    .line 718
    .local v27, "isLGT":Ljava/lang/Boolean;
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

    .line 719
    .local v26, "isKorOpen":Ljava/lang/Boolean;
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

    .line 723
    .local v24, "isKOR":Ljava/lang/Boolean;
    const-string v52, "XAS"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v51

    .line 724
    .local v51, "isXAS":Ljava/lang/Boolean;
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

    .line 725
    .local v34, "isSPR":Ljava/lang/Boolean;
    const-string v52, "VZW"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v49

    .line 726
    .local v49, "isVZW":Ljava/lang/Boolean;
    const-string v52, "VMU"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v47

    .line 727
    .local v47, "isVMU":Ljava/lang/Boolean;
    const-string v52, "BST"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 728
    .local v7, "isBST":Ljava/lang/Boolean;
    const-string v52, "USC"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    .line 729
    .local v44, "isUSCC":Ljava/lang/Boolean;
    const-string v52, "MTR"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    .line 730
    .local v29, "isMPCS":Ljava/lang/Boolean;
    const-string v52, "ACG"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 731
    .local v3, "isACG":Ljava/lang/Boolean;
    const-string v52, "XAR"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v50

    .line 732
    .local v50, "isXAR":Ljava/lang/Boolean;
    const-string v52, "CRI"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 733
    .local v12, "isCRI":Ljava/lang/Boolean;
    const-string v52, "TFN"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v38

    .line 734
    .local v38, "isTFN":Ljava/lang/Boolean;
    const-string v52, "CSP"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 735
    .local v13, "isCSP":Ljava/lang/Boolean;
    const-string v52, "LRA"

    sget-object v53, Lcom/android/incallui/InCallUIFeature;->salesCode:Ljava/lang/String;

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    .line 736
    .local v28, "isLRA":Ljava/lang/Boolean;
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

    .line 738
    .local v30, "isREG":Ljava/lang/Boolean;
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

    .line 741
    .local v4, "isATT":Ljava/lang/Boolean;
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

    .line 742
    .local v40, "isTMO":Ljava/lang/Boolean;
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

    .line 745
    .local v43, "isUSA":Ljava/lang/Boolean;
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

    .line 748
    .local v42, "isTelstra":Ljava/lang/Boolean;
    sget-object v52, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v53, "feature_aus"

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    if-eqz v36, :cond_1

    .line 752
    sget-object v52, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    const-string v53, "pending_outgoing_intent_only_tablet"

    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
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

    .line 695
    .end local v3    # "isACG":Ljava/lang/Boolean;
    .end local v4    # "isATT":Ljava/lang/Boolean;
    .end local v7    # "isBST":Ljava/lang/Boolean;
    .end local v9    # "isCAN":Ljava/lang/Boolean;
    .end local v10    # "isCHN":Ljava/lang/Boolean;
    .end local v11    # "isCHNCMCC":Ljava/lang/Boolean;
    .end local v12    # "isCRI":Ljava/lang/Boolean;
    .end local v13    # "isCSP":Ljava/lang/Boolean;
    .end local v14    # "isCTC":Ljava/lang/Boolean;
    .end local v15    # "isDCM":Ljava/lang/Boolean;
    .end local v19    # "isHKTW":Ljava/lang/Boolean;
    .end local v20    # "isIND":Ljava/lang/Boolean;
    .end local v21    # "isINS":Ljava/lang/Boolean;
    .end local v22    # "isINU":Ljava/lang/Boolean;
    .end local v24    # "isKOR":Ljava/lang/Boolean;
    .end local v25    # "isKTT":Ljava/lang/Boolean;
    .end local v26    # "isKorOpen":Ljava/lang/Boolean;
    .end local v27    # "isLGT":Ljava/lang/Boolean;
    .end local v28    # "isLRA":Ljava/lang/Boolean;
    .end local v29    # "isMPCS":Ljava/lang/Boolean;
    .end local v30    # "isREG":Ljava/lang/Boolean;
    .end local v33    # "isSKT":Ljava/lang/Boolean;
    .end local v34    # "isSPR":Ljava/lang/Boolean;
    .end local v35    # "isSWC":Ljava/lang/Boolean;
    .end local v38    # "isTFN":Ljava/lang/Boolean;
    .end local v40    # "isTMO":Ljava/lang/Boolean;
    .end local v42    # "isTelstra":Ljava/lang/Boolean;
    .end local v43    # "isUSA":Ljava/lang/Boolean;
    .end local v44    # "isUSCC":Ljava/lang/Boolean;
    .end local v47    # "isVMU":Ljava/lang/Boolean;
    .end local v49    # "isVZW":Ljava/lang/Boolean;
    .end local v50    # "isXAR":Ljava/lang/Boolean;
    .end local v51    # "isXAS":Ljava/lang/Boolean;
    :cond_13
    const/16 v52, 0x0

    goto/16 :goto_2

    .line 700
    .restart local v9    # "isCAN":Ljava/lang/Boolean;
    .restart local v11    # "isCHNCMCC":Ljava/lang/Boolean;
    .restart local v14    # "isCTC":Ljava/lang/Boolean;
    :cond_14
    const/16 v52, 0x0

    goto/16 :goto_3

    .line 703
    .restart local v10    # "isCHN":Ljava/lang/Boolean;
    :cond_15
    const/16 v52, 0x0

    goto/16 :goto_4

    .line 709
    .restart local v19    # "isHKTW":Ljava/lang/Boolean;
    .restart local v21    # "isINS":Ljava/lang/Boolean;
    .restart local v22    # "isINU":Ljava/lang/Boolean;
    .restart local v35    # "isSWC":Ljava/lang/Boolean;
    :cond_16
    const/16 v52, 0x0

    goto/16 :goto_5

    .line 715
    .restart local v15    # "isDCM":Ljava/lang/Boolean;
    .restart local v20    # "isIND":Ljava/lang/Boolean;
    :cond_17
    const/16 v52, 0x0

    goto/16 :goto_6

    .line 716
    .restart local v33    # "isSKT":Ljava/lang/Boolean;
    :cond_18
    const/16 v52, 0x0

    goto/16 :goto_7

    .line 717
    .restart local v25    # "isKTT":Ljava/lang/Boolean;
    :cond_19
    const/16 v52, 0x0

    goto/16 :goto_8

    .line 718
    .restart local v27    # "isLGT":Ljava/lang/Boolean;
    :cond_1a
    const/16 v52, 0x0

    goto/16 :goto_9

    .line 719
    .restart local v26    # "isKorOpen":Ljava/lang/Boolean;
    :cond_1b
    const/16 v52, 0x0

    goto/16 :goto_a

    .line 724
    .restart local v24    # "isKOR":Ljava/lang/Boolean;
    .restart local v51    # "isXAS":Ljava/lang/Boolean;
    :cond_1c
    const/16 v52, 0x0

    goto/16 :goto_b

    .line 736
    .restart local v3    # "isACG":Ljava/lang/Boolean;
    .restart local v7    # "isBST":Ljava/lang/Boolean;
    .restart local v12    # "isCRI":Ljava/lang/Boolean;
    .restart local v13    # "isCSP":Ljava/lang/Boolean;
    .restart local v28    # "isLRA":Ljava/lang/Boolean;
    .restart local v29    # "isMPCS":Ljava/lang/Boolean;
    .restart local v34    # "isSPR":Ljava/lang/Boolean;
    .restart local v38    # "isTFN":Ljava/lang/Boolean;
    .restart local v44    # "isUSCC":Ljava/lang/Boolean;
    .restart local v47    # "isVMU":Ljava/lang/Boolean;
    .restart local v49    # "isVZW":Ljava/lang/Boolean;
    .restart local v50    # "isXAR":Ljava/lang/Boolean;
    :cond_1d
    const/16 v52, 0x0

    goto/16 :goto_c

    .line 738
    .restart local v30    # "isREG":Ljava/lang/Boolean;
    :cond_1e
    const/16 v52, 0x0

    goto/16 :goto_d

    .line 741
    .restart local v4    # "isATT":Ljava/lang/Boolean;
    :cond_1f
    const/16 v52, 0x0

    goto/16 :goto_e

    .line 742
    .restart local v40    # "isTMO":Ljava/lang/Boolean;
    :cond_20
    const/16 v52, 0x0

    goto/16 :goto_f

    .line 745
    .restart local v43    # "isUSA":Ljava/lang/Boolean;
    :cond_21
    const/16 v52, 0x0

    goto :goto_10
.end method

.method public static putFeature(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "featureName"    # Ljava/lang/String;
    .param p1, "enable"    # Ljava/lang/Boolean;

    .prologue
    .line 1429
    sget-object v0, Lcom/android/incallui/InCallUIFeature;->mFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1430
    return-void
.end method
