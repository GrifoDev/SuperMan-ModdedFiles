.class Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;
.super Ljava/lang/Object;
.source "PSMUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PSMUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomizedItem"
.end annotation


# instance fields
.field private mAodMode:I

.field private mBrightness:I

.field private mDataRestriction:I

.field private mNetworkRestriction:I

.field private mPerformance:I

.field private mResolution:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyItemData(Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;)V
    .locals 1

    iget v0, p1, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mDataRestriction:I

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mDataRestriction:I

    iget v0, p1, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mNetworkRestriction:I

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mNetworkRestriction:I

    iget v0, p1, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mAodMode:I

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mAodMode:I

    iget v0, p1, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mPerformance:I

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mPerformance:I

    iget v0, p1, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mBrightness:I

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mBrightness:I

    iget v0, p1, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mResolution:I

    iput v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mResolution:I

    return-void
.end method

.method public getCustomValue(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "low_power_back_data_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ultra_power_mode_back_data_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mDataRestriction:I

    return v0

    :cond_1
    const-string/jumbo v0, "psm_network_power_saving"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mNetworkRestriction:I

    return v0

    :cond_2
    const-string/jumbo v0, "psm_always_on_display_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mAodMode:I

    return v0

    :cond_3
    const-string/jumbo v0, "restricted_device_performance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mPerformance:I

    return v0

    :cond_4
    const-string/jumbo v0, "limit_brightness_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mBrightness:I

    return v0

    :cond_5
    iget v0, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mResolution:I

    return v0
.end method

.method public setCustomValue(Ljava/lang/String;I)V
    .locals 1

    const-string/jumbo v0, "low_power_back_data_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ultra_power_mode_back_data_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iput p2, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mDataRestriction:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "psm_network_power_saving"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput p2, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mNetworkRestriction:I

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "psm_always_on_display_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput p2, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mAodMode:I

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "restricted_device_performance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput p2, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mPerformance:I

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "limit_brightness_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput p2, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mBrightness:I

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "screen_resolution_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/samsung/android/settings/powersaving/PSMUtils$CustomizedItem;->mResolution:I

    goto :goto_0
.end method
