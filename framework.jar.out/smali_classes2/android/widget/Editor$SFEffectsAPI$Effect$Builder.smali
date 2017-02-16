.class public Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SFEffectsAPI$Effect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAnimationMode:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

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

.field private mEffectTarget:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

.field private final mGeometryAnimationVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/Editor$SFEffectsAPI$Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPixelAnimationVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/Editor$SFEffectsAPI$Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mPixelEffectType:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Landroid/widget/Editor$SFEffectsAPI$AnimationMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mAnimationMode:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Landroid/widget/Editor$SFEffectsAPI$EffectTarget;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mEffectTarget:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Landroid/widget/Editor$SFEffectsAPI$PixEffectType;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mPixelEffectType:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7716
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7717
    sget-object v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimStatic:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mAnimationMode:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    .line 7718
    sget-object v0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->SELF:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mEffectTarget:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    .line 7719
    sget-object v0, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->NONE:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mPixelEffectType:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    .line 7720
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    .line 7721
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    .line 7722
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    .line 7716
    return-void
.end method


# virtual methods
.method public addEffectRegionRect(Landroid/graphics/Rect;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 7762
    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 7763
    return-object p0
.end method

.method public addGeoAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;
    .locals 2
    .param p1, "animParam"    # Landroid/widget/Editor$SFEffectsAPI$AnimParam;
    .param p2, "frame"    # I
    .param p3, "value"    # F
    .param p4, "interpolation"    # Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    .prologue
    .line 7757
    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    new-instance v1, Landroid/widget/Editor$SFEffectsAPI$Animation;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/Editor$SFEffectsAPI$Animation;-><init>(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 7758
    return-object p0
.end method

.method public addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;
    .locals 2
    .param p1, "animParam"    # Landroid/widget/Editor$SFEffectsAPI$AnimParam;
    .param p2, "frame"    # I
    .param p3, "value"    # F
    .param p4, "interpolation"    # Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    .prologue
    .line 7752
    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    new-instance v1, Landroid/widget/Editor$SFEffectsAPI$Animation;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/Editor$SFEffectsAPI$Animation;-><init>(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 7753
    return-object p0
.end method

.method public build()Landroid/widget/Editor$SFEffectsAPI$Effect;
    .locals 1

    .prologue
    .line 7767
    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$Effect;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SFEffectsAPI$Effect;-><init>(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)V

    return-object v0
.end method

.method public clearAnimations()V
    .locals 1

    .prologue
    .line 7771
    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 7772
    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 7770
    return-void
.end method

.method public getAnimationMode()Landroid/widget/Editor$SFEffectsAPI$AnimationMode;
    .locals 1

    .prologue
    .line 7725
    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mAnimationMode:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    return-object v0
.end method

.method public getEffectTarget()Landroid/widget/Editor$SFEffectsAPI$EffectTarget;
    .locals 1

    .prologue
    .line 7734
    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mEffectTarget:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    return-object v0
.end method

.method public getPixelEffectType()Landroid/widget/Editor$SFEffectsAPI$PixEffectType;
    .locals 1

    .prologue
    .line 7743
    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mPixelEffectType:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    return-object v0
.end method

.method public setAnimationMode(Landroid/widget/Editor$SFEffectsAPI$AnimationMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;
    .locals 0
    .param p1, "mAnimationMode"    # Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    .prologue
    .line 7729
    iput-object p1, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mAnimationMode:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    .line 7730
    return-object p0
.end method

.method public setEffectTarget(Landroid/widget/Editor$SFEffectsAPI$EffectTarget;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;
    .locals 0
    .param p1, "mEffectTarget"    # Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    .prologue
    .line 7738
    iput-object p1, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mEffectTarget:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    .line 7739
    return-object p0
.end method

.method public setPixelEffectType(Landroid/widget/Editor$SFEffectsAPI$PixEffectType;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;
    .locals 0
    .param p1, "mPixelEffectType"    # Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    .prologue
    .line 7747
    iput-object p1, p0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->mPixelEffectType:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    .line 7748
    return-object p0
.end method
