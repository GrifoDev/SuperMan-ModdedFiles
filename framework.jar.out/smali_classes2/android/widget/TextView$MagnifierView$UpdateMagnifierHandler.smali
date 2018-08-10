.class Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;
.super Landroid/os/Handler;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$MagnifierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateMagnifierHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$MagnifierView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView$MagnifierView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView$MagnifierView;Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;-><init>(Landroid/widget/TextView$MagnifierView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/high16 v10, 0x40000000    # 2.0f

    const v12, 0x3f2b851f    # 0.67f

    const/4 v9, 0x1

    const/4 v11, 0x0

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    iget-object v7, v7, Landroid/widget/TextView$MagnifierView;->builder:Landroid/view/SurfaceEffects$Effect$Builder;

    invoke-virtual {v7}, Landroid/view/SurfaceEffects$Effect$Builder;->getPixelAnimationVector()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v7}, Landroid/widget/TextView$MagnifierView;->-get6(Landroid/widget/TextView$MagnifierView;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get10(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v8

    aget v8, v8, v11

    sub-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get9(Landroid/widget/TextView$MagnifierView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get4(Landroid/widget/TextView$MagnifierView;)F

    move-result v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get3(Landroid/widget/TextView$MagnifierView;)[I

    move-result-object v8

    aget v8, v8, v11

    int-to-float v8, v8

    add-float v4, v7, v8

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v7}, Landroid/widget/TextView$MagnifierView;->-get7(Landroid/widget/TextView$MagnifierView;)I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get10(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v8

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get9(Landroid/widget/TextView$MagnifierView;)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get11(Landroid/widget/TextView$MagnifierView;)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get5(Landroid/widget/TextView$MagnifierView;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get4(Landroid/widget/TextView$MagnifierView;)F

    move-result v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get3(Landroid/widget/TextView$MagnifierView;)[I

    move-result-object v8

    aget v8, v8, v9

    int-to-float v8, v8

    add-float v5, v7, v8

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v7}, Landroid/widget/TextView$MagnifierView;->-get10(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v7

    aget v7, v7, v11

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get8(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v8

    aget v8, v8, v11

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get4(Landroid/widget/TextView$MagnifierView;)F

    move-result v8

    mul-float v2, v7, v8

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v7}, Landroid/widget/TextView$MagnifierView;->-get11(Landroid/widget/TextView$MagnifierView;)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get5(Landroid/widget/TextView$MagnifierView;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get10(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v8

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get8(Landroid/widget/TextView$MagnifierView;)[F

    move-result-object v8

    aget v8, v8, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v8}, Landroid/widget/TextView$MagnifierView;->-get4(Landroid/widget/TextView$MagnifierView;)F

    move-result v8

    mul-float v3, v7, v8

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    iget-object v7, v7, Landroid/widget/TextView$MagnifierView;->builder:Landroid/view/SurfaceEffects$Effect$Builder;

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->REGION_POS_X:Landroid/view/SurfaceEffects$AnimParam;

    sget-object v9, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v11, v4, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->REGION_POS_Y:Landroid/view/SurfaceEffects$AnimParam;

    sget-object v9, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v11, v5, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->REGION_OFFSET_X:Landroid/view/SurfaceEffects$AnimParam;

    sget-object v9, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v11, v2, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->REGION_OFFSET_Y:Landroid/view/SurfaceEffects$AnimParam;

    sget-object v9, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v11, v3, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->REGION_SIZE_X:Landroid/view/SurfaceEffects$AnimParam;

    iget-object v9, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v9}, Landroid/widget/TextView$MagnifierView;->-get0(Landroid/widget/TextView$MagnifierView;)I

    move-result v9

    int-to-float v9, v9

    sget-object v10, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->REGION_SIZE_Y:Landroid/view/SurfaceEffects$AnimParam;

    iget-object v9, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v9}, Landroid/widget/TextView$MagnifierView;->-get1(Landroid/widget/TextView$MagnifierView;)I

    move-result v9

    int-to-float v9, v9

    sget-object v10, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->REGION_FACTOR_X:Landroid/view/SurfaceEffects$AnimParam;

    sget-object v9, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v11, v12, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->REGION_FACTOR_Y:Landroid/view/SurfaceEffects$AnimParam;

    sget-object v9, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v11, v12, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->REGION_CORNER_SIZE:Landroid/view/SurfaceEffects$AnimParam;

    iget-object v9, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v9}, Landroid/widget/TextView$MagnifierView;->-get2(Landroid/widget/TextView$MagnifierView;)I

    move-result v9

    int-to-float v9, v9

    sget-object v10, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    iget-object v7, v7, Landroid/widget/TextView$MagnifierView;->builder:Landroid/view/SurfaceEffects$Effect$Builder;

    invoke-virtual {v7}, Landroid/view/SurfaceEffects$Effect$Builder;->build()Landroid/view/SurfaceEffects$Effect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SurfaceEffects$Effect;->getBytes()[I

    move-result-object v0

    :try_start_0
    const-string/jumbo v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/TextView$MagnifierView;

    invoke-static {v7}, Landroid/widget/TextView$MagnifierView;->-get12(Landroid/widget/TextView$MagnifierView;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Landroid/view/IWindowManager;->startSurfaceAnimation(Landroid/os/IBinder;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v7, "TextView"

    const-string/jumbo v8, "Unable to call startSurfaceAnimation"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
