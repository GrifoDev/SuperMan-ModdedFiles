.class public Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;
.super Landroid/app/Application;
.source "ColorChipSettingValue.java"


# instance fields
.field private mCVDType:I

.field private mCVDseverity:F

.field private mContext:Landroid/content/Context;

.field private mUserParameter:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->UpdatePrefCVDSettingValue()V

    return-void
.end method

.method public static setColorWeaknessMode(Landroid/content/Context;Z)V
    .locals 10

    const-string/jumbo v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    :try_start_0
    invoke-virtual {v4}, Landroid/os/PowerManager;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "setColorWeaknessMode"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Landroid/os/IBinder;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string/jumbo v7, "power"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public UpdatePrefCVDSettingValue()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind_cvdtype"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->mCVDType:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind_cvdseverity"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->mCVDseverity:F

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind_user_parameter"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->mUserParameter:F

    return-void
.end method

.method public getCVDType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->mCVDType:I

    return v0
.end method

.method public getCVDseverity()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->mCVDseverity:F

    return v0
.end method

.method public getUserParameter()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->mUserParameter:F

    return v0
.end method
