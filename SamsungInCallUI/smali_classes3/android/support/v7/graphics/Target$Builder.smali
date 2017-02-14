.class public final Landroid/support/v7/graphics/Target$Builder;
.super Ljava/lang/Object;
.source "Target.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mTarget:Landroid/support/v7/graphics/Target;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/graphics/Target;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/graphics/Target;-><init>(Landroid/support/v7/graphics/Target$1;)V

    iput-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/graphics/Target;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v7/graphics/Target;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/graphics/Target;-><init>(Landroid/support/v7/graphics/Target;Landroid/support/v7/graphics/Target$1;)V

    iput-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v7/graphics/Target;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    return-object v0
.end method

.method public setExclusive(Z)Landroid/support/v7/graphics/Target$Builder;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    # setter for: Landroid/support/v7/graphics/Target;->mIsExclusive:Z
    invoke-static {v0, p1}, Landroid/support/v7/graphics/Target;->access$502(Landroid/support/v7/graphics/Target;Z)Z

    return-object p0
.end method

.method public setLightnessWeight(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    # getter for: Landroid/support/v7/graphics/Target;->mWeights:[F
    invoke-static {v0}, Landroid/support/v7/graphics/Target;->access$400(Landroid/support/v7/graphics/Target;)[F

    move-result-object v0

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object p0
.end method

.method public setMaximumLightness(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    # getter for: Landroid/support/v7/graphics/Target;->mLightnessTargets:[F
    invoke-static {v0}, Landroid/support/v7/graphics/Target;->access$300(Landroid/support/v7/graphics/Target;)[F

    move-result-object v0

    const/4 v1, 0x2

    aput p1, v0, v1

    return-object p0
.end method

.method public setMaximumSaturation(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    # getter for: Landroid/support/v7/graphics/Target;->mSaturationTargets:[F
    invoke-static {v0}, Landroid/support/v7/graphics/Target;->access$200(Landroid/support/v7/graphics/Target;)[F

    move-result-object v0

    const/4 v1, 0x2

    aput p1, v0, v1

    return-object p0
.end method

.method public setMinimumLightness(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    # getter for: Landroid/support/v7/graphics/Target;->mLightnessTargets:[F
    invoke-static {v0}, Landroid/support/v7/graphics/Target;->access$300(Landroid/support/v7/graphics/Target;)[F

    move-result-object v0

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method

.method public setMinimumSaturation(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    # getter for: Landroid/support/v7/graphics/Target;->mSaturationTargets:[F
    invoke-static {v0}, Landroid/support/v7/graphics/Target;->access$200(Landroid/support/v7/graphics/Target;)[F

    move-result-object v0

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method

.method public setPopulationWeight(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    # getter for: Landroid/support/v7/graphics/Target;->mWeights:[F
    invoke-static {v0}, Landroid/support/v7/graphics/Target;->access$400(Landroid/support/v7/graphics/Target;)[F

    move-result-object v0

    const/4 v1, 0x2

    aput p1, v0, v1

    return-object p0
.end method

.method public setSaturationWeight(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    # getter for: Landroid/support/v7/graphics/Target;->mWeights:[F
    invoke-static {v0}, Landroid/support/v7/graphics/Target;->access$400(Landroid/support/v7/graphics/Target;)[F

    move-result-object v0

    const/4 v1, 0x0

    aput p1, v0, v1

    return-object p0
.end method

.method public setTargetLightness(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    # getter for: Landroid/support/v7/graphics/Target;->mLightnessTargets:[F
    invoke-static {v0}, Landroid/support/v7/graphics/Target;->access$300(Landroid/support/v7/graphics/Target;)[F

    move-result-object v0

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object p0
.end method

.method public setTargetSaturation(F)Landroid/support/v7/graphics/Target$Builder;
    .locals 2
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget-object v0, p0, Landroid/support/v7/graphics/Target$Builder;->mTarget:Landroid/support/v7/graphics/Target;

    # getter for: Landroid/support/v7/graphics/Target;->mSaturationTargets:[F
    invoke-static {v0}, Landroid/support/v7/graphics/Target;->access$200(Landroid/support/v7/graphics/Target;)[F

    move-result-object v0

    const/4 v1, 0x1

    aput p1, v0, v1

    return-object p0
.end method
