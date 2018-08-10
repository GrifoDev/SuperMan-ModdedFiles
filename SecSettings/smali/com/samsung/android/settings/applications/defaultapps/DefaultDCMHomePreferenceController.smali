.class public Lcom/samsung/android/settings/applications/defaultapps/DefaultDCMHomePreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;
.source "DefaultDCMHomePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "home_dcm"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/defaultapps/DefaultDCMHomePreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.bmwgroup.touchcommand"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v2
.end method
