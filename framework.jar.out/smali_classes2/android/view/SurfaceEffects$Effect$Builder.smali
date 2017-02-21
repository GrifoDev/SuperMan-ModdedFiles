.class public Landroid/view/SurfaceEffects$Effect$Builder;
.super Ljava/lang/Object;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects$Effect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAnimationMode:Landroid/view/SurfaceEffects$AnimationMode;

.field private final mEffectRegion:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectTarget:Landroid/view/SurfaceEffects$EffectTarget;

.field private final mGeometryAnimationVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/SurfaceEffects$AnimKeyFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final mPixelAnimationVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/SurfaceEffects$AnimKeyFrame;",
            ">;"
        }
    .end annotation
.end field

.field private mPixelEffectType:Landroid/view/SurfaceEffects$PixEffectType;


# direct methods
.method static synthetic -get0(Landroid/view/SurfaceEffects$Effect$Builder;)Landroid/view/SurfaceEffects$AnimationMode;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mAnimationMode:Landroid/view/SurfaceEffects$AnimationMode;

    return-object v0
.end method

.method static synthetic -get1(Landroid/view/SurfaceEffects$Effect$Builder;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/SurfaceEffects$Effect$Builder;)Landroid/view/SurfaceEffects$EffectTarget;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectTarget:Landroid/view/SurfaceEffects$EffectTarget;

    return-object v0
.end method

.method static synthetic -get3(Landroid/view/SurfaceEffects$Effect$Builder;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get4(Landroid/view/SurfaceEffects$Effect$Builder;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get5(Landroid/view/SurfaceEffects$Effect$Builder;)Landroid/view/SurfaceEffects$PixEffectType;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelEffectType:Landroid/view/SurfaceEffects$PixEffectType;

    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/SurfaceEffects$AnimationMode;->STATIC:Landroid/view/SurfaceEffects$AnimationMode;

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mAnimationMode:Landroid/view/SurfaceEffects$AnimationMode;

    sget-object v0, Landroid/view/SurfaceEffects$EffectTarget;->BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectTarget:Landroid/view/SurfaceEffects$EffectTarget;

    sget-object v0, Landroid/view/SurfaceEffects$PixEffectType;->NONE:Landroid/view/SurfaceEffects$PixEffectType;

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelEffectType:Landroid/view/SurfaceEffects$PixEffectType;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceEffects$Effect$Builder;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceEffects$Effect$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addEffectRegionRect(Landroid/graphics/Rect;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGeoAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    new-instance v1, Landroid/view/SurfaceEffects$AnimKeyFrame;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/SurfaceEffects$AnimKeyFrame;-><init>(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 2

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    new-instance v1, Landroid/view/SurfaceEffects$AnimKeyFrame;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/SurfaceEffects$AnimKeyFrame;-><init>(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/view/SurfaceEffects$Effect;
    .locals 2

    new-instance v0, Landroid/view/SurfaceEffects$Effect;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/SurfaceEffects$Effect;-><init>(Landroid/view/SurfaceEffects$Effect$Builder;Landroid/view/SurfaceEffects$Effect;)V

    return-object v0
.end method

.method public getAnimationMode()Landroid/view/SurfaceEffects$AnimationMode;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mAnimationMode:Landroid/view/SurfaceEffects$AnimationMode;

    return-object v0
.end method

.method public getEffectRegion()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    return-object v0
.end method

.method public getEffectTarget()Landroid/view/SurfaceEffects$EffectTarget;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectTarget:Landroid/view/SurfaceEffects$EffectTarget;

    return-object v0
.end method

.method public getGeometryAnimationVector()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/view/SurfaceEffects$AnimKeyFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    return-object v0
.end method

.method public getPixelAnimationVector()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Landroid/view/SurfaceEffects$AnimKeyFrame;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    return-object v0
.end method

.method public getPixelEffectType()Landroid/view/SurfaceEffects$PixEffectType;
    .locals 1

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelEffectType:Landroid/view/SurfaceEffects$PixEffectType;

    return-object v0
.end method

.method public makeFullscreen()Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 4

    const/16 v3, 0x2710

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mAnimationMode:Landroid/view/SurfaceEffects$AnimationMode;

    return-object p0
.end method

.method public setEffectTarget(Landroid/view/SurfaceEffects$EffectTarget;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mEffectTarget:Landroid/view/SurfaceEffects$EffectTarget;

    return-object p0
.end method

.method public setPixelEffectType(Landroid/view/SurfaceEffects$PixEffectType;)Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/SurfaceEffects$Effect$Builder;->mPixelEffectType:Landroid/view/SurfaceEffects$PixEffectType;

    return-object p0
.end method
