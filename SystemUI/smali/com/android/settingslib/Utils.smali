.class public Lcom/android/settingslib/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final WIFI_PIE_FOR_BADGING:[I

.field private static dualAgentPackageName:Ljava/lang/String;

.field private static sMenutreeCode:Ljava/lang/String;

.field private static sPermissionControllerPackageName:Ljava/lang/String;

.field private static sServicesSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSharedSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const v0, 0x10804f4

    const v1, 0x10804f5

    const v2, 0x10804f6

    const v3, 0x10804f7

    const v4, 0x10804f8

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->WIFI_PIE_FOR_BADGING:[I

    const-string/jumbo v0, "com.samsung.android.da.daagent"

    sput-object v0, Lcom/android/settingslib/Utils;->dualAgentPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatPercentage(D)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .locals 4

    const-string/jumbo v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v2, v0, 0x64

    div-int/2addr v2, v1

    return v2
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010435

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getColorAttr(Landroid/content/Context;I)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method public static getColorError(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010543

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getContactsPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, "com.android.contacts"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    return-object v1

    :cond_1
    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    move-object v3, v1

    goto :goto_0
.end method

.method public static getDefaultColor(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    return v1
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v2

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v2, "persist.omc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 4

    :try_start_0
    const-string/jumbo v2, "android"

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public static getThemeAttr(Landroid/content/Context;I)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-virtual {p0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method public static getWifiBadgeResource(I)I
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No badge resource found for badge value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, -0x1

    return v0

    :sswitch_1
    const v0, 0x10804fc

    return v0

    :sswitch_2
    const v0, 0x10804fa

    return v0

    :sswitch_3
    const v0, 0x10804f9

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
    .end sparse-switch
.end method

.method public static isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 2

    const v1, 0x10401fa

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSplitViewSupported(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "tablet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "settings_split_view"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public static isSupportCHNEnhancedFeature(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSupportGraceUXForVZW(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "settings_ui"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settingslib/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    return v4

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static isSupportGraceUXGraceView()Z
    .locals 2

    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settingslib/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportGraceUXHeroView(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "settings_ui"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settingslib/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    return v4

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    sget-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    if-nez v1, :cond_0

    new-array v1, v0, [Landroid/content/pm/Signature;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v2

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    :cond_0
    sget-object v1, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    :cond_2
    sget-object v1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v1, v1, v3

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v1, v1, v3

    invoke-static {p2}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v2, "com.android.printspooler"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v0

    :cond_5
    return v0
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/settingslib/Utils;->sMenutreeCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settingslib/Utils;->sMenutreeCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settingslib/Utils;->sMenutreeCode:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_ConfigOpMenuStructure"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sMenutreeCode:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sMenutreeCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settingslib/Utils;->sMenutreeCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settingslib/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sMenutreeCode:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/android/settingslib/Utils;->sMenutreeCode:Ljava/lang/String;

    return-object v0
.end method
