.class public Lcom/android/incallui/service/vt/VideoButtonMetrics;
.super Ljava/lang/Object;


# instance fields
.field public answer_bg_height:I

.field public answer_floating_button_bottom_offset:I

.field public answer_incoming_area_height:I

.field public answer_incoming_area_width:I

.field public answer_reject_message_handler_width:I

.field public bottom_offset:I

.field public height:I

.field public height_with_offset:I

.field public top:I

.field public transparent_answer_bg:Z

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, " ButtonMetrics{width=%s, height=%s, bottom_offset=%s, height_with_offset=%s, top=%s, answer_bg_height=%s} "

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->width:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/android/incallui/service/vt/VideoCallMetrics;Landroid/content/Context;)V
    .locals 13

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v1

    invoke-virtual {p1, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasMultiWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_7

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasNavigationBarZone()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v6

    iget v7, p1, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    iget v8, p1, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    invoke-static {p2}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v9

    if-nez v0, :cond_9

    if-ge v8, v7, :cond_9

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_a

    const v2, 0x7f0f0002

    :goto_3
    int-to-float v3, v7

    invoke-virtual {p1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v3, v2

    const v2, 0x7f0a034d

    invoke-virtual {p1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v2

    if-le v3, v2, :cond_12

    :goto_4
    iput v2, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->width:I

    const v3, 0x7f0a02d2

    invoke-virtual {p1, v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height:I

    if-nez v5, :cond_b

    if-nez v0, :cond_b

    if-nez v6, :cond_b

    int-to-float v10, v8

    const v11, 0x7f0f0086

    invoke-virtual {p1, v11}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v10, v3

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    if-gez v3, :cond_1

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    :cond_1
    int-to-float v3, v8

    const v10, 0x7f0f0087

    invoke-virtual {p1, v10}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v10

    mul-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    :goto_5
    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    sub-int v3, v8, v3

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->top:I

    if-eqz v1, :cond_2

    if-nez v5, :cond_2

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    add-int/2addr v3, v9

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    add-int/2addr v3, v9

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    if-eqz v6, :cond_2

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->top:I

    sub-int/2addr v3, v9

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->top:I

    :cond_2
    if-nez v0, :cond_e

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->isTabletType(I)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v5, :cond_3

    if-ge v8, v7, :cond_e

    :cond_3
    iput v2, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_width:I

    :goto_6
    const v2, 0x7f0a01d6

    invoke-virtual {p1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v2

    const v3, 0x7f0a01df

    invoke-virtual {p1, v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v3

    sget v10, Lcom/android/incallui/service/vt/VideoCallCapability;->THREE_WIDGET:I

    invoke-static {v10}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v10

    if-eqz v10, :cond_f

    int-to-float v10, v8

    const v11, 0x7f0f008d

    invoke-virtual {p1, v11}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v11, v8

    const v12, 0x7f0f0005

    invoke-virtual {p1, v12}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    mul-int/lit8 v12, v2, 0x2

    add-int/2addr v3, v12

    add-int/2addr v3, v10

    add-int/2addr v3, v11

    const v10, 0x7f0a0595

    invoke-virtual {p1, v10}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v10

    add-int/2addr v3, v10

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    :goto_7
    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v3, v10

    if-nez v0, :cond_4

    if-nez v5, :cond_4

    if-lt v8, v7, :cond_4

    if-nez v6, :cond_4

    sget v6, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->TABLET:I

    invoke-static {v4, v6}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->is(II)Z

    move-result v4

    if-eqz v4, :cond_11

    const/high16 v4, 0x3f400000    # 0.75f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_11

    if-nez v5, :cond_11

    :cond_4
    if-nez v0, :cond_10

    if-eqz v5, :cond_10

    int-to-float v3, v8

    const v4, 0x7f0f0085

    invoke-virtual {p1, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    :goto_8
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->transparent_answer_bg:Z

    :goto_9
    if-eqz v1, :cond_5

    if-nez v5, :cond_5

    iget v1, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    add-int/2addr v1, v9

    iput v1, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    iget v1, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    add-int/2addr v1, v9

    iput v1, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    :cond_5
    iget v1, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    iput v1, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_floating_button_bottom_offset:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_floating_button_bottom_offset:I

    const v1, 0x7f0a0594

    invoke-virtual {p1, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDimension(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_floating_button_bottom_offset:I

    :cond_6
    const v0, 0x7f0f008f

    invoke-virtual {p1, v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getInteger(I)I

    move-result v0

    const v1, 0x7f0f0090

    invoke-virtual {p1, v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getInteger(I)I

    move-result v1

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_width:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    mul-int/2addr v0, v2

    div-int/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_width:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    iput v0, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_reject_message_handler_width:I

    return-void

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_a
    const v2, 0x7f0f0001

    goto/16 :goto_3

    :cond_b
    int-to-float v3, v8

    const v10, 0x7f0f0081

    invoke-virtual {p1, v10}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePercent(I)F

    move-result v10

    mul-float/2addr v3, v10

    float-to-int v3, v3

    if-eqz v0, :cond_c

    int-to-float v3, v8

    const v10, 0x7f0f0082

    invoke-virtual {p1, v10}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePercent(I)F

    move-result v10

    mul-float/2addr v3, v10

    float-to-int v3, v3

    :cond_c
    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    if-eqz v5, :cond_d

    if-nez v0, :cond_d

    int-to-float v3, v8

    const v10, 0x7f0f0088

    invoke-virtual {p1, v10}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v10

    mul-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    goto/16 :goto_5

    :cond_d
    iget v10, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height:I

    iget v11, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    goto/16 :goto_5

    :cond_e
    iput v7, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_width:I

    goto/16 :goto_6

    :cond_f
    int-to-float v10, v8

    const v11, 0x7f0f008e

    invoke-virtual {p1, v11}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v11, v8

    const v12, 0x7f0f0006

    invoke-virtual {p1, v12}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int/2addr v11, v2

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    goto/16 :goto_7

    :cond_10
    int-to-float v3, v8

    const v4, 0x7f0f0084

    invoke-virtual {p1, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getRatePermil(I)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    goto/16 :goto_8

    :cond_11
    iget v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    iput v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_bg_height:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->transparent_answer_bg:Z

    goto/16 :goto_9

    :cond_12
    move v2, v3

    goto/16 :goto_4
.end method
