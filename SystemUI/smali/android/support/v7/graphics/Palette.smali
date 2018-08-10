.class public final Landroid/support/v7/graphics/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/Palette$1;,
        Landroid/support/v7/graphics/Palette$Builder;,
        Landroid/support/v7/graphics/Palette$Filter;,
        Landroid/support/v7/graphics/Palette$PaletteAsyncListener;,
        Landroid/support/v7/graphics/Palette$Swatch;
    }
.end annotation


# static fields
.field static final DEFAULT_FILTER:Landroid/support/v7/graphics/Palette$Filter;


# instance fields
.field private final mDominantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

.field private final mSelectedSwatches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v7/graphics/Target;",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Target;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsedColors:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v7/graphics/Palette$1;

    invoke-direct {v0}, Landroid/support/v7/graphics/Palette$1;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/Palette;->DEFAULT_FILTER:Landroid/support/v7/graphics/Palette$Filter;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Target;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    iput-object p2, p0, Landroid/support/v7/graphics/Palette;->mTargets:Ljava/util/List;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-direct {p0}, Landroid/support/v7/graphics/Palette;->findDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette;->mDominantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    return-void
.end method

.method private findDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 6

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v5, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v4}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v5

    if-le v5, v2, :cond_0

    move-object v3, v4

    invoke-virtual {v4}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;
    .locals 1

    new-instance v0, Landroid/support/v7/graphics/Palette$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private generateScore(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Target;)F
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Landroid/support/v7/graphics/Palette;->mDominantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/support/v7/graphics/Palette;->mDominantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v5}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getSaturationWeight()F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getSaturationWeight()F

    move-result v5

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getTargetSaturation()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v9, v6

    mul-float v4, v5, v6

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getLightnessWeight()F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getLightnessWeight()F

    move-result v5

    const/4 v6, 0x2

    aget v6, v0, v6

    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getTargetLightness()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v9, v6

    mul-float v1, v5, v6

    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getPopulationWeight()F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getPopulationWeight()F

    move-result v5

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    mul-float v3, v5, v6

    :cond_2
    add-float v5, v4, v1

    add-float/2addr v5, v3

    return v5

    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private generateScoredTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Swatch;
    .locals 4

    invoke-direct {p0, p1}, Landroid/support/v7/graphics/Palette;->getMaxScoredSwatchForTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/graphics/Target;->isExclusive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    :cond_0
    return-object v0
.end method

.method private getMaxScoredSwatchForTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Swatch;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v6, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-direct {p0, v5, p1}, Landroid/support/v7/graphics/Palette;->shouldBeScoredForTarget(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Target;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v5, p1}, Landroid/support/v7/graphics/Palette;->generateScore(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Target;)F

    move-result v4

    if-eqz v3, :cond_0

    cmpl-float v6, v4, v2

    if-lez v6, :cond_1

    :cond_0
    move-object v3, v5

    move v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private shouldBeScoredForTarget(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Target;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v0

    aget v1, v0, v3

    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getMinimumSaturation()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    aget v1, v0, v3

    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getMaximumSaturation()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    aget v1, v0, v4

    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getMinimumLightness()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    aget v1, v0, v4

    invoke-virtual {p2}, Landroid/support/v7/graphics/Target;->getMaximumLightness()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method generate()V
    .locals 5

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mTargets:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/graphics/Target;

    invoke-virtual {v2}, Landroid/support/v7/graphics/Target;->normalizeWeights()V

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-direct {p0, v2}, Landroid/support/v7/graphics/Palette;->generateScoredTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mUsedColors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method

.method public getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/Palette;->getSwatchForTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/Palette;->getSwatchForTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mDominantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/Palette;->getSwatchForTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/Palette;->getSwatchForTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/Palette;->getSwatchForTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method

.method public getSwatchForTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .param p1    # Landroid/support/v7/graphics/Target;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mSelectedSwatches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public getSwatches()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-virtual {p0, v0}, Landroid/support/v7/graphics/Palette;->getSwatchForTarget(Landroid/support/v7/graphics/Target;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    return-object v0
.end method
