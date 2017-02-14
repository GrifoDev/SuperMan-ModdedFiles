.class public Landroid/media/effect/SingleFilterEffect;
.super Landroid/media/effect/FilterEffect;
.source "SingleFilterEffect.java"


# instance fields
.field protected mFunction:Landroid/filterfw/core/FilterFunction;

.field protected mInputName:Ljava/lang/String;

.field protected mOutputName:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    iput-object p4, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/effect/SingleFilterEffect;->mOutputName:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/filterfw/core/FilterFactory;->sharedFactory()Landroid/filterfw/core/FilterFactory;

    move-result-object v0

    invoke-virtual {v0, p3, v2}, Landroid/filterfw/core/FilterFactory;->createFilterByClass(Ljava/lang/Class;Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/filterfw/core/Filter;->initWithAssignmentList([Ljava/lang/Object;)V

    new-instance v3, Landroid/filterfw/core/FilterFunction;

    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/filterfw/core/FilterFunction;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V

    iput-object v3, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    return-void
.end method


# virtual methods
.method public apply(IIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->beginGLEffect()V

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/FilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v0

    invoke-virtual {p0, p4, p2, p3}, Landroid/media/effect/FilterEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v1

    iget-object v3, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/media/effect/SingleFilterEffect;->mInputName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->endGLEffect()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    invoke-virtual {v0}, Landroid/filterfw/core/FilterFunction;->tearDown()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/media/effect/SingleFilterEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/FilterFunction;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
