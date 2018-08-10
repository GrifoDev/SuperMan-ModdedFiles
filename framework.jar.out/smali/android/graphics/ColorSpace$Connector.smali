.class public Landroid/graphics/ColorSpace$Connector;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Connector$Rgb;
    }
.end annotation


# instance fields
.field private final mDestination:Landroid/graphics/ColorSpace;

.field private final mIntent:Landroid/graphics/ColorSpace$RenderIntent;

.field private final mSource:Landroid/graphics/ColorSpace;

.field private final mTransform:[F

.field private final mTransformDestination:Landroid/graphics/ColorSpace;

.field private final mTransformSource:Landroid/graphics/ColorSpace;


# direct methods
.method constructor <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v3

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_1

    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v0

    invoke-static {p2, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v4

    :goto_1
    invoke-static {p1, p2, p3}, Landroid/graphics/ColorSpace$Connector;->computeTransform(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)[F

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V

    return-void

    :cond_0
    move-object v3, p1

    goto :goto_0

    :cond_1
    move-object v4, p2

    goto :goto_1
.end method

.method private constructor <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/ColorSpace$Connector;->mSource:Landroid/graphics/ColorSpace;

    iput-object p2, p0, Landroid/graphics/ColorSpace$Connector;->mDestination:Landroid/graphics/ColorSpace;

    iput-object p3, p0, Landroid/graphics/ColorSpace$Connector;->mTransformSource:Landroid/graphics/ColorSpace;

    iput-object p4, p0, Landroid/graphics/ColorSpace$Connector;->mTransformDestination:Landroid/graphics/ColorSpace;

    iput-object p5, p0, Landroid/graphics/ColorSpace$Connector;->mIntent:Landroid/graphics/ColorSpace$RenderIntent;

    iput-object p6, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[FLandroid/graphics/ColorSpace$Connector;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[F)V

    return-void
.end method

.method private static computeTransform(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)[F
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v5, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    if-eq p2, v5, :cond_0

    return-object v7

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v5

    sget-object v6, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v5, v6, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v5

    sget-object v6, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    return-object v7

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    if-eqz v0, :cond_8

    :cond_4
    if-eqz v3, :cond_5

    move-object v2, p0

    :goto_2
    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    if-eqz v3, :cond_6

    invoke-static {v2}, Landroid/graphics/ColorSpace$Rgb;->-get5(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/ColorSpace;->-wrap10([F)[F

    move-result-object v4

    :goto_3
    if-eqz v0, :cond_7

    invoke-static {v2}, Landroid/graphics/ColorSpace$Rgb;->-get5(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/ColorSpace;->-wrap10([F)[F

    move-result-object v1

    :goto_4
    const/4 v5, 0x3

    new-array v5, v5, [F

    aget v6, v4, v8

    aget v7, v1, v8

    div-float/2addr v6, v7

    aput v6, v5, v8

    aget v6, v4, v9

    aget v7, v1, v9

    div-float/2addr v6, v7

    aput v6, v5, v9

    aget v6, v4, v10

    aget v7, v1, v10

    div-float/2addr v6, v7

    aput v6, v5, v10

    return-object v5

    :cond_5
    move-object v2, p1

    goto :goto_2

    :cond_6
    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v4

    goto :goto_3

    :cond_7
    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v1

    goto :goto_4

    :cond_8
    return-object v7
.end method

.method static identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .locals 2

    new-instance v0, Landroid/graphics/ColorSpace$Connector$1;

    sget-object v1, Landroid/graphics/ColorSpace$RenderIntent;->RELATIVE:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-direct {v0, p0, p0, v1}, Landroid/graphics/ColorSpace$Connector$1;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method


# virtual methods
.method public getDestination()Landroid/graphics/ColorSpace;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mDestination:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getRenderIntent()Landroid/graphics/ColorSpace$RenderIntent;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mIntent:Landroid/graphics/ColorSpace$RenderIntent;

    return-object v0
.end method

.method public getSource()Landroid/graphics/ColorSpace;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector;->mSource:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public transform(FFF)[F
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    move-result-object v0

    return-object v0
.end method

.method public transform([F)[F
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/graphics/ColorSpace$Connector;->mTransformSource:Landroid/graphics/ColorSpace;

    invoke-virtual {v1, p1}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    if-eqz v1, :cond_0

    aget v1, v0, v3

    iget-object v2, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v2, v2, v3

    mul-float/2addr v1, v2

    aput v1, v0, v3

    aget v1, v0, v4

    iget-object v2, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v2, v2, v4

    mul-float/2addr v1, v2

    aput v1, v0, v4

    aget v1, v0, v5

    iget-object v2, p0, Landroid/graphics/ColorSpace$Connector;->mTransform:[F

    aget v2, v2, v5

    mul-float/2addr v1, v2

    aput v1, v0, v5

    :cond_0
    iget-object v1, p0, Landroid/graphics/ColorSpace$Connector;->mTransformDestination:Landroid/graphics/ColorSpace;

    invoke-virtual {v1, v0}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    move-result-object v1

    return-object v1
.end method
