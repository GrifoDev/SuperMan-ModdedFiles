.class Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;
.super Ljava/lang/Object;
.source "ActivityTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityTransitionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostViewListeners"
.end annotation


# instance fields
.field private mDecor:Landroid/view/ViewGroup;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mParent:Landroid/view/View;

.field private mView:Landroid/view/View;

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    iput-object p2, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    iput-object p3, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mDecor:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onPreDraw()Z
    .locals 4

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/view/GhostView;->getGhost(Landroid/view/View;)Landroid/view/GhostView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->removeListener()V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mDecor:Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    iget-object v1, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->removeListener()V

    return-void
.end method

.method public removeListener()V
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityTransitionCoordinator$GhostViewListeners;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
