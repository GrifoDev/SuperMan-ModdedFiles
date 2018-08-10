.class final Landroid/support/v7/app/OverlayListView;
.super Landroid/widget/ListView;
.source "OverlayListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/OverlayListView$OverlayObject;
    }
.end annotation


# instance fields
.field private final mOverlayObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/app/OverlayListView$OverlayObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addOverlayObject(Landroid/support/v7/app/OverlayListView$OverlayObject;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/app/OverlayListView$OverlayObject;

    invoke-virtual {v2}, Landroid/support/v7/app/OverlayListView$OverlayObject;->getBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/OverlayListView;->getDrawingTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/support/v7/app/OverlayListView$OverlayObject;->update(J)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public startAnimationAll()V
    .locals 4

    iget-object v2, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/OverlayListView$OverlayObject;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView$OverlayObject;->isAnimationStarted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/OverlayListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/OverlayListView$OverlayObject;->startAnimation(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopAnimationAll()V
    .locals 3

    iget-object v2, p0, Landroid/support/v7/app/OverlayListView;->mOverlayObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/OverlayListView$OverlayObject;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView$OverlayObject;->stopAnimation()V

    goto :goto_0

    :cond_0
    return-void
.end method
