.class public Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;
.super Ljava/lang/Object;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimationHandleNode"
.end annotation


# instance fields
.field private mAnimationsTokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->mAnimationsTokenList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->mAnimationsTokenList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;-><init>(Lcom/samsung/android/graphics/SemImageFilter;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->addAnimationToken(Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;)V

    return-void
.end method


# virtual methods
.method public addAnimationToken(Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;->mImageFilter:Lcom/samsung/android/graphics/SemImageFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->mAnimationsTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getAnimationToken(I)Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->mAnimationsTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v1, "Failed to get animation token! Index is out of range!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->mAnimationsTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->mAnimationsTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public killAnimation()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->mAnimationsTokenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->mAnimationsTokenList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;

    iget-object v2, v1, Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;->mImageFilter:Lcom/samsung/android/graphics/SemImageFilter;

    iget v3, v1, Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;->mAnimationId:I

    invoke-static {v2, v3}, Lcom/samsung/android/graphics/SemImageFilter;->-wrap0(Lcom/samsung/android/graphics/SemImageFilter;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->mAnimationsTokenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeAnimationToken(Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/samsung/android/graphics/SemImageFilter$AnimationToken;->mImageFilter:Lcom/samsung/android/graphics/SemImageFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->mAnimationsTokenList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
