.class Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "CompositeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/graphics/CompositeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompositeState"
.end annotation


# instance fields
.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;Landroid/support/v17/leanback/graphics/CompositeDrawable;Landroid/content/res/Resources;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iget-object v2, p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    iget-object v2, p1, Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;

    invoke-direct {v4, v2, p2, p3}, Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;-><init>(Landroid/support/v17/leanback/graphics/CompositeDrawable$ChildDrawable;Landroid/support/v17/leanback/graphics/CompositeDrawable;Landroid/content/res/Resources;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/support/v17/leanback/graphics/CompositeDrawable;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/graphics/CompositeDrawable;-><init>(Landroid/support/v17/leanback/graphics/CompositeDrawable$CompositeState;)V

    return-object v0
.end method
