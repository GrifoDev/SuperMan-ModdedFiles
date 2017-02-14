.class Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;
.super Landroid/os/Handler;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$MagnifierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateMagnifierHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$MagnifierView;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$MagnifierView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$MagnifierView;Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;-><init>(Landroid/widget/Editor$MagnifierView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "Editor"

    const-string/jumbo v1, "magnifier update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->builder:Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    invoke-virtual {v0}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->clearAnimations()V

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->builder:Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionPosX:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v2}, Landroid/widget/Editor$MagnifierView;->-get5(Landroid/widget/Editor$MagnifierView;)F

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v3}, Landroid/widget/Editor$MagnifierView;->-get8(Landroid/widget/Editor$MagnifierView;)[F

    move-result-object v3

    aget v3, v3, v4

    sub-float/2addr v2, v3

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionPosY:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v2}, Landroid/widget/Editor$MagnifierView;->-get6(Landroid/widget/Editor$MagnifierView;)F

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v3}, Landroid/widget/Editor$MagnifierView;->-get8(Landroid/widget/Editor$MagnifierView;)[F

    move-result-object v3

    aget v3, v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v3}, Landroid/widget/Editor$MagnifierView;->-get4(Landroid/widget/Editor$MagnifierView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionSizeX:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v2}, Landroid/widget/Editor$MagnifierView;->-get0(Landroid/widget/Editor$MagnifierView;)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionSizeY:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v2}, Landroid/widget/Editor$MagnifierView;->-get1(Landroid/widget/Editor$MagnifierView;)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionOffsetX:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v2}, Landroid/widget/Editor$MagnifierView;->-get8(Landroid/widget/Editor$MagnifierView;)[F

    move-result-object v2

    aget v2, v2, v4

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v3}, Landroid/widget/Editor$MagnifierView;->-get7(Landroid/widget/Editor$MagnifierView;)[F

    move-result-object v3

    aget v3, v3, v4

    add-float/2addr v2, v3

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionOffsetY:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v2}, Landroid/widget/Editor$MagnifierView;->-get4(Landroid/widget/Editor$MagnifierView;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v3}, Landroid/widget/Editor$MagnifierView;->-get8(Landroid/widget/Editor$MagnifierView;)[F

    move-result-object v3

    aget v3, v3, v5

    add-float/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v3}, Landroid/widget/Editor$MagnifierView;->-get7(Landroid/widget/Editor$MagnifierView;)[F

    move-result-object v3

    aget v3, v3, v5

    add-float/2addr v2, v3

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionFactorX:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    sget-object v2, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v6, v2}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionFactorY:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    sget-object v2, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v6, v2}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionSizeT:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v2}, Landroid/widget/Editor$MagnifierView;->-get2(Landroid/widget/Editor$MagnifierView;)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->builder:Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    invoke-virtual {v0}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->build()Landroid/widget/Editor$SFEffectsAPI$Effect;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v1}, Landroid/widget/Editor$MagnifierView;->-get3(Landroid/widget/Editor$MagnifierView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v2}, Landroid/widget/Editor$MagnifierView;->-get9(Landroid/widget/Editor$MagnifierView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$SFEffectsAPI$Effect;->start(Landroid/content/Context;Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;->this$1:Landroid/widget/Editor$MagnifierView;

    invoke-static {v0, v4}, Landroid/widget/Editor$MagnifierView;->-set0(Landroid/widget/Editor$MagnifierView;Z)Z

    return-void
.end method
