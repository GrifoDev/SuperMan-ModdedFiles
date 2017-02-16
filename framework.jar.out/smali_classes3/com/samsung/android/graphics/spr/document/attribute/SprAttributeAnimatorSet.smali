.class public Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
.source "SprAttributeAnimatorSet.java"


# instance fields
.field public duration:I

.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field public repeatCount:I

.field public startOffset:I


# direct methods
.method public constructor <init>(B)V
    .locals 1
    .param p1, "type"    # B

    .prologue
    .line 25
    const/16 v0, 0x61

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    const/16 v0, 0x61

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    .line 28
    return-void
.end method


# virtual methods
.method public addAnimatorData(Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;)V
    .locals 2
    .param p1, "animator"    # Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->clone()Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    .line 106
    .local v2, "attribute":Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    .line 108
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 109
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v3, v2, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    return-object v2
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 6
    .param p1, "in"    # Lcom/samsung/android/graphics/spr/document/SprInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->startOffset:I

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->duration:I

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->repeatCount:I

    .line 39
    const/4 v1, 0x0

    .local v1, "o":I
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v0

    .local v0, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v3

    .line 41
    .local v3, "type":I
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v2

    .line 43
    .local v2, "size":I
    packed-switch v3, :pswitch_data_0

    .line 63
    int-to-long v4, v2

    invoke-virtual {p1, v4, v5}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    .line 39
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorFillColor;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorFillColor;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 48
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorStrokeColor;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorStrokeColor;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 51
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorRotate;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorRotate;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 54
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorScale;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 57
    :pswitch_4
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorTranslate;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 60
    :pswitch_5
    iget-object v4, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;

    invoke-direct {v5, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorAlpha;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    .end local v2    # "size":I
    .end local v3    # "type":I
    :cond_0
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getAnimators()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSPRSize()I
    .locals 4

    .prologue
    .line 87
    const/16 v2, 0x10

    .line 89
    .local v2, "size":I
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 90
    .local v0, "animator":Landroid/animation/Animator;
    check-cast v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    .end local v0    # "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    goto :goto_0

    .line 92
    :cond_0
    return v2
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->startOffset:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 72
    iget v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->duration:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 73
    iget v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->repeatCount:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .local v0, "animator":Landroid/animation/Animator;
    move-object v2, v0

    .line 76
    check-cast v2, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;

    .line 77
    .local v2, "animatorBase":Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
    iget-byte v3, v2, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->mType:B

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 78
    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->getSPRSize()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 79
    invoke-virtual {v2, p1}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_0

    .line 70
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v2    # "animatorBase":Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase;
    :cond_0
    return-void
.end method

.method public updateAnimatorInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 3
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 116
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeAnimatorSet;->mAnimators:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "animator$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 117
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 115
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_0
    return-void
.end method
