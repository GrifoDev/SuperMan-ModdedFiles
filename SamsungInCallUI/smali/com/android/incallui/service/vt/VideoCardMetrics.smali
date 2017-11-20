.class public Lcom/android/incallui/service/vt/VideoCardMetrics;
.super Ljava/lang/Object;


# instance fields
.field public banner_height:I

.field public call_state_default_height:I

.field public call_state_divider:I

.field public call_state_primary_height:I

.field public caller_info_height:I

.field public camera_effect_height:I

.field public indicator_area:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerCallCardHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getPrimaryCallCardHeight()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_divider:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->banner_height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCameraEffectCallCardHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getPrimaryCallCardHeight()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->camera_effect_height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMultipartyBannerCallCardHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getMultipartyCallCardHeight()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_divider:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->banner_height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMultipartyCallCardHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getPrimaryCallCardHeight()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_divider:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_default_height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOutgoingCallCardHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getPrimaryCallCardHeight()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->caller_info_height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPrimaryCallCardHeight()I
    .locals 2

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->indicator_area:I

    invoke-virtual {p0}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getPrimaryCallStateHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPrimaryCallStateHeight()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_primary_height:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, " CallCardMetrics{indicator=%s, callstate=%s, banner=%s, outgoing=%s} "

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->indicator_area:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_default_height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->banner_height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->caller_info_height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/incallui/service/vt/VideoCallMetrics;Landroid/content/Context;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->indicator_area:I

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->needToHideIndicatorArea()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/android/incallui/util/ScreenControlUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->indicator_area:I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a062f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_default_height:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0161

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->banner_height:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->caller_info_height:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->camera_effect_height:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_divider:I

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhonePortraitType()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, p1, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics$Weight;->getRatePercent(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->indicator_area:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_primary_height:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isTabletType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0624

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_default_height:I

    iget v0, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_default_height:I

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_primary_height:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0623

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->banner_height:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0626

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->caller_info_height:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_default_height:I

    iput v0, p0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_primary_height:I

    goto :goto_0
.end method
