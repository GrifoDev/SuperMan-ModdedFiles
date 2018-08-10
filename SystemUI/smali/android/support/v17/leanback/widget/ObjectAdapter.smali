.class public abstract Landroid/support/v17/leanback/widget/ObjectAdapter;
.super Ljava/lang/Object;
.source "ObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;,
        Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    return-void
.end method


# virtual methods
.method public abstract get(I)Ljava/lang/Object;
.end method

.method public getId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Presenter selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    return-object v0
.end method

.method public final getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-object v0
.end method

.method public final hasStableIds()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    return v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final notifyChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyChanged()V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method protected final notifyItemRangeInserted(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method protected final notifyItemRangeRemoved(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method protected onPresenterSelectorChanged()V
    .locals 0

    return-void
.end method

.method public final registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Presenter selector must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eq v2, p1, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->onPresenterSelectorChanged()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->notifyChanged()V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public abstract size()I
.end method

.method public final unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
