.class public Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;
.super Ljava/lang/Object;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimationHandle"
.end annotation


# instance fields
.field private mAnimationsHandleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/graphics/SemImageFilter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;->mAnimationsHandleList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;->mAnimationsHandleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;->mAnimationsHandleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;->mAnimationsHandleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandleNode;->killAnimation()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/graphics/SemImageFilter;->-set0(Lcom/samsung/android/graphics/SemImageFilter;Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;

    iget-object v1, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;->mAnimationsHandleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
