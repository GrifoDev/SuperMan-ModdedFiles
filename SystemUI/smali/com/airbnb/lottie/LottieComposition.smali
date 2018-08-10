.class public Lcom/airbnb/lottie/LottieComposition;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieComposition$Factory;
    }
.end annotation


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private final characters:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation
.end field

.field private final dpScale:F

.field private final endFrame:J

.field private final fonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation
.end field

.field private final frameRate:F

.field private final images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation
.end field

.field private final layerMap:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private final majorVersion:I

.field private final minorVersion:I

.field private final patchVersion:I

.field private final performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

.field private final precomps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final startFrame:J

.field private final warnings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/graphics/Rect;JJFFIII)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroid/support/v4/util/SparseArrayCompat;

    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroid/support/v4/util/LongSparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    new-instance v0, Lcom/airbnb/lottie/PerformanceTracker;

    invoke-direct {v0}, Lcom/airbnb/lottie/PerformanceTracker;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    iput-object p1, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    iput-wide p2, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:J

    iput-wide p4, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:J

    iput p6, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    iput p7, p0, Lcom/airbnb/lottie/LottieComposition;->dpScale:F

    iput p8, p0, Lcom/airbnb/lottie/LottieComposition;->majorVersion:I

    iput p9, p0, Lcom/airbnb/lottie/LottieComposition;->minorVersion:I

    iput p10, p0, Lcom/airbnb/lottie/LottieComposition;->patchVersion:I

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-static {p0, v0, v1, v2}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(Lcom/airbnb/lottie/LottieComposition;III)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "Lottie only supports bodymovin >= 4.5.0"

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;JJFFIIILcom/airbnb/lottie/LottieComposition$1;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/airbnb/lottie/LottieComposition;-><init>(Landroid/graphics/Rect;JJFFIII)V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/LongSparseArray;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroid/support/v4/util/LongSparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/SparseArrayCompat;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string/jumbo v0, "LOTTIE"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->warnings:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCharacters()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->characters:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0
.end method

.method public getDpScale()F
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->dpScale:F

    return v0
.end method

.method public getDuration()J
    .locals 6

    iget-wide v2, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:J

    iget-wide v4, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:J

    sub-long v0, v2, v4

    long-to-float v2, v0

    iget v3, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    div-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    return-wide v2
.end method

.method public getDurationFrames()F
    .locals 2

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lcom/airbnb/lottie/LottieComposition;->frameRate:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getEndFrame()J
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-wide v0, p0, Lcom/airbnb/lottie/LottieComposition;->endFrame:J

    return-wide v0
.end method

.method public getFonts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/Font;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->fonts:Ljava/util/Map;

    return-object v0
.end method

.method getImages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/LottieImageAsset;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->images:Ljava/util/Map;

    return-object v0
.end method

.method public getLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->minorVersion:I

    return v0
.end method

.method public getPatchVersion()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/LottieComposition;->patchVersion:I

    return v0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    return-object v0
.end method

.method public getPrecomps(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->precomps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getStartFrame()J
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-wide v0, p0, Lcom/airbnb/lottie/LottieComposition;->startFrame:J

    return-wide v0
.end method

.method public layerModelForId(J)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/layer/Layer;

    return-object v0
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieComposition;->performanceTracker:Lcom/airbnb/lottie/PerformanceTracker;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/PerformanceTracker;->setEnabled(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "LottieComposition:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/airbnb/lottie/LottieComposition;->layers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/layer/Layer;

    const-string/jumbo v3, "\t"

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
