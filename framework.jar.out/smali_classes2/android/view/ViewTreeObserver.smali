.class public final Landroid/view/ViewTreeObserver;
.super Ljava/lang/Object;
.source "ViewTreeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewTreeObserver$CopyOnWriteArray;,
        Landroid/view/ViewTreeObserver$InternalInsetsInfo;,
        Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;,
        Landroid/view/ViewTreeObserver$OnDrawListener;,
        Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;,
        Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;,
        Landroid/view/ViewTreeObserver$OnPreDrawListener;,
        Landroid/view/ViewTreeObserver$OnScrollChangedListener;,
        Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;,
        Landroid/view/ViewTreeObserver$OnWindowAttachListener;,
        Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;,
        Landroid/view/ViewTreeObserver$OnWindowShownListener;,
        Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;
    }
.end annotation


# static fields
.field private static sIllegalOnDrawModificationIsFatal:Z


# instance fields
.field private mAlive:Z

.field private mInDispatchOnDraw:Z

.field private mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDrawListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnStylusButtonEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnWindowAttachListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/ViewTreeObserver$CopyOnWriteArray",
            "<",
            "Landroid/view/ViewTreeObserver$OnWindowShownListener;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowShown:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    :goto_0
    sput-boolean v0, Landroid/view/ViewTreeObserver;->sIllegalOnDrawModificationIsFatal:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkIsAlive()V
    .locals 2

    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This ViewTreeObserver is not alive, call getViewTreeObserver() again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private kill()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    return-void
.end method


# virtual methods
.method public addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call addOnDrawListener inside of onDraw"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Landroid/view/ViewTreeObserver;->sIllegalOnDrawModificationIsFatal:Z

    if-eqz v1, :cond_1

    throw v0

    :cond_1
    const-string/jumbo v1, "ViewTreeObserver"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->add(Ljava/lang/Object;)V

    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mWindowShown:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V

    :cond_1
    return-void
.end method

.method final dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-interface {v4, p1}, Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;->onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v4
.end method

.method public final dispatchOnDraw()V
    .locals 4

    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-interface {v3}, Landroid/view/ViewTreeObserver$OnDrawListener;->onDraw()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    :cond_1
    return-void
.end method

.method public final dispatchOnEnterAnimationComplete()V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;->onEnterAnimationComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;->onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchOnGlobalLayout()V
    .locals 5

    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;->onGlobalLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v4
.end method

.method public final dispatchOnPenButtonEventListener(Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;

    invoke-interface {v3, p1}, Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;->onStylusButtonEvent(Landroid/view/MotionEvent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchOnPreDraw()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v4, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-interface {v5}, Landroid/view/ViewTreeObserver$OnPreDrawListener;->onPreDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    or-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    :cond_1
    return v1

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v5
.end method

.method final dispatchOnScrollChanged()V
    .locals 5

    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v4
.end method

.method final dispatchOnTouchModeChanged(Z)V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;

    invoke-interface {v0, p1}, Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;->onTouchModeChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final dispatchOnWindowAttachedChange(Z)V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnWindowAttachListener;

    if-eqz p1, :cond_0

    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowAttached()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewTreeObserver$OnWindowAttachListener;->onWindowDetached()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final dispatchOnWindowFocusChange(Z)V
    .locals 4

    iget-object v2, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;

    invoke-interface {v0, p1}, Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final dispatchOnWindowShown()V
    .locals 5

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/ViewTreeObserver;->mWindowShown:Z

    iget-object v3, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->start()Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$CopyOnWriteArray$Access;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-interface {v4}, Landroid/view/ViewTreeObserver$OnWindowShownListener;->onWindowShown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->end()V

    throw v4
.end method

.method final hasComputeInternalInsetsListeners()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method final hasOnPreDrawListeners()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAlive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ViewTreeObserver;->mAlive:Z

    return v0
.end method

.method merge(Landroid/view/ViewTreeObserver;)V
    .locals 2

    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_2
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    :cond_3
    :goto_3
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    :cond_4
    :goto_4
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_5
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_6
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    :cond_7
    :goto_7
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    :cond_8
    :goto_8
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->addAll(Landroid/view/ViewTreeObserver$CopyOnWriteArray;)V

    :cond_9
    :goto_9
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    :goto_a
    invoke-direct {p1}, Landroid/view/ViewTreeObserver;->kill()V

    return-void

    :cond_b
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto/16 :goto_0

    :cond_c
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto/16 :goto_1

    :cond_d
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto/16 :goto_2

    :cond_e
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto/16 :goto_3

    :cond_f
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_4

    :cond_10
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    goto :goto_5

    :cond_11
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_6

    :cond_12
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_7

    :cond_13
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_8

    :cond_14
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    goto :goto_9

    :cond_15
    iget-object v0, p1, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    goto :goto_a
.end method

.method public removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnComputeInternalInsetsListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewTreeObserver;->mInDispatchOnDraw:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call removeOnDrawListener inside of onDraw"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Landroid/view/ViewTreeObserver;->sIllegalOnDrawModificationIsFatal:Z

    if-eqz v1, :cond_1

    throw v0

    :cond_1
    const-string/jumbo v1, "ViewTreeObserver"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v1, p0, Landroid/view/ViewTreeObserver;->mOnDrawListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnEnterAnimationCompleteListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnGlobalLayoutListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnPreDrawListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnScrollChangedListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnTouchModeChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnWindowAttachListener(Landroid/view/ViewTreeObserver$OnWindowAttachListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowAttachListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowFocusListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnWindowShownListeners:Landroid/view/ViewTreeObserver$CopyOnWriteArray;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver$CopyOnWriteArray;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public semAddOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public semRemoveOnStylusButtonEventListener(Landroid/view/ViewTreeObserver$SemOnStylusButtonEventListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/ViewTreeObserver;->checkIsAlive()V

    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewTreeObserver;->mOnStylusButtonEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
