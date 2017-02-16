.class public Landroid/view/SurfaceEffects$Effect;
.super Ljava/lang/Object;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Effect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceEffects$Effect$Builder;
    }
.end annotation


# instance fields
.field private final mBytes:[I


# direct methods
.method private constructor <init>(Landroid/view/SurfaceEffects$Effect$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/view/SurfaceEffects$Effect$Builder;

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {p1}, Landroid/view/SurfaceEffects$Effect;->serializeEffect(Landroid/view/SurfaceEffects$Effect$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect;->mBytes:[I

    .line 222
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/SurfaceEffects$Effect$Builder;Landroid/view/SurfaceEffects$Effect;)V
    .locals 0
    .param p1, "builder"    # Landroid/view/SurfaceEffects$Effect$Builder;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/SurfaceEffects$Effect;-><init>(Landroid/view/SurfaceEffects$Effect$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceEffects$Effect;)V
    .locals 2
    .param p1, "o"    # Landroid/view/SurfaceEffects$Effect;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iget-object v0, p1, Landroid/view/SurfaceEffects$Effect;->mBytes:[I

    iget-object v1, p1, Landroid/view/SurfaceEffects$Effect;->mBytes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceEffects$Effect;->mBytes:[I

    .line 226
    return-void
.end method

.method public static serializeEffect(Landroid/view/SurfaceEffects$Effect$Builder;)[I
    .locals 8
    .param p0, "builder"    # Landroid/view/SurfaceEffects$Effect$Builder;

    .prologue
    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v2, "argsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Landroid/view/SurfaceEffects$Effect$Builder;->-get0(Landroid/view/SurfaceEffects$Effect$Builder;)Landroid/view/SurfaceEffects$AnimationMode;

    move-result-object v7

    iget v7, v7, Landroid/view/SurfaceEffects$AnimationMode;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-static {p0}, Landroid/view/SurfaceEffects$Effect$Builder;->-get2(Landroid/view/SurfaceEffects$Effect$Builder;)Landroid/view/SurfaceEffects$EffectTarget;

    move-result-object v7

    iget v7, v7, Landroid/view/SurfaceEffects$EffectTarget;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-static {p0}, Landroid/view/SurfaceEffects$Effect$Builder;->-get5(Landroid/view/SurfaceEffects$Effect$Builder;)Landroid/view/SurfaceEffects$PixEffectType;

    move-result-object v7

    iget v7, v7, Landroid/view/SurfaceEffects$PixEffectType;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-virtual {p0}, Landroid/view/SurfaceEffects$Effect$Builder;->getEffectRegion()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {p0}, Landroid/view/SurfaceEffects$Effect$Builder;->-get1(Landroid/view/SurfaceEffects$Effect$Builder;)Ljava/util/Vector;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 255
    .local v5, "r":Landroid/graphics/Rect;
    iget v7, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget v7, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget v7, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 261
    .end local v5    # "r":Landroid/graphics/Rect;
    :cond_0
    invoke-static {p0}, Landroid/view/SurfaceEffects$Effect$Builder;->-get4(Landroid/view/SurfaceEffects$Effect$Builder;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-static {p0}, Landroid/view/SurfaceEffects$Effect$Builder;->-get4(Landroid/view/SurfaceEffects$Effect$Builder;)Ljava/util/Vector;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "anim$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$AnimKeyFrame;

    .line 263
    .local v0, "anim":Landroid/view/SurfaceEffects$AnimKeyFrame;
    iget-object v7, v0, Landroid/view/SurfaceEffects$AnimKeyFrame;->animParam:Landroid/view/SurfaceEffects$AnimParam;

    iget v7, v7, Landroid/view/SurfaceEffects$AnimParam;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget v7, v0, Landroid/view/SurfaceEffects$AnimKeyFrame;->timeMs:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget v7, v0, Landroid/view/SurfaceEffects$AnimKeyFrame;->value:F

    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v7, v0, Landroid/view/SurfaceEffects$AnimKeyFrame;->interp:Landroid/view/SurfaceEffects$InterpMode;

    iget v7, v7, Landroid/view/SurfaceEffects$InterpMode;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 269
    .end local v0    # "anim":Landroid/view/SurfaceEffects$AnimKeyFrame;
    :cond_1
    invoke-static {p0}, Landroid/view/SurfaceEffects$Effect$Builder;->-get3(Landroid/view/SurfaceEffects$Effect$Builder;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-static {p0}, Landroid/view/SurfaceEffects$Effect$Builder;->-get3(Landroid/view/SurfaceEffects$Effect$Builder;)Ljava/util/Vector;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$AnimKeyFrame;

    .line 271
    .restart local v0    # "anim":Landroid/view/SurfaceEffects$AnimKeyFrame;
    iget-object v7, v0, Landroid/view/SurfaceEffects$AnimKeyFrame;->animParam:Landroid/view/SurfaceEffects$AnimParam;

    iget v7, v7, Landroid/view/SurfaceEffects$AnimParam;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget v7, v0, Landroid/view/SurfaceEffects$AnimKeyFrame;->timeMs:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    iget v7, v0, Landroid/view/SurfaceEffects$AnimKeyFrame;->value:F

    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v7, v0, Landroid/view/SurfaceEffects$AnimKeyFrame;->interp:Landroid/view/SurfaceEffects$InterpMode;

    iget v7, v7, Landroid/view/SurfaceEffects$InterpMode;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 277
    .end local v0    # "anim":Landroid/view/SurfaceEffects$AnimKeyFrame;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [I

    .line 278
    .local v4, "newArgs":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 279
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v3

    .line 278
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 282
    :cond_3
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 236
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 237
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    move-object v0, p1

    .line 238
    check-cast v0, Landroid/view/SurfaceEffects$Effect;

    .line 239
    .local v0, "effect":Landroid/view/SurfaceEffects$Effect;
    iget-object v1, p0, Landroid/view/SurfaceEffects$Effect;->mBytes:[I

    iget-object v2, v0, Landroid/view/SurfaceEffects$Effect;->mBytes:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1
.end method

.method public getBytes()[I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect;->mBytes:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/view/SurfaceEffects$Effect;->mBytes:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
