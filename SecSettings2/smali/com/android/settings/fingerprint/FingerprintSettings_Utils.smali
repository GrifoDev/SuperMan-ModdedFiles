.class public Lcom/android/settings/fingerprint/FingerprintSettings_Utils;
.super Ljava/lang/Object;
.source "FingerprintSettings_Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDpToPixel(ILandroid/content/Context;)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float v1, p0

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static convertEvtToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "MSG_DEFAULT"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "MSG_REFRESH_FINGERPRINT_TEMPLATES"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "MSG_FINGER_AUTH_SUCCESS"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "MSG_FINGER_AUTH_FAIL"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "MSG_FINGER_AUTH_ERROR"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "MSG_FINGER_AUTH_HELP"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getMaxFingerEnroll()I
    .locals 9

    const/4 v3, 0x4

    const-string/jumbo v0, "google_touch"

    if-eqz v0, :cond_0

    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_0

    aget-object v6, v5, v2

    const-string/jumbo v7, "settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string/jumbo v7, "settings"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_1

    aget-object v6, v5, v2

    const-string/jumbo v7, "settings"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    :goto_1
    const-string/jumbo v6, "FpstFingerprintSettings_Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getMaxFingerEnroll: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v6, "FpstFingerprintSettings_Utils"

    const-string/jumbo v7, "getMaxFingerEnroll NumberFormatException"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isRearSesnor()Z
    .locals 2

    const-string/jumbo v0, "google_touch"

    const-string/jumbo v1, "touch_rear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method
