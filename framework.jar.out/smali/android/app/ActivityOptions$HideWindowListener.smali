.class Landroid/app/ActivityOptions$HideWindowListener;
.super Landroid/transition/TransitionListenerAdapter;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HideWindowListener"
.end annotation


# instance fields
.field private final mExit:Landroid/app/ExitTransitionCoordinator;

.field private mSharedElementHidden:Z

.field private mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionEnded:Z

.field private final mWaitingForTransition:Z

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator;)V
    .locals 5

    const v4, 0x1020258

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    iput-object p2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mExit:Landroid/app/ExitTransitionCoordinator;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p2, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    :goto_0
    iget-object v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot start a transition while one is running"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4, p2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private hideWhenDone()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElementHidden:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mTransitionEnded:Z

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mExit:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const v4, 0x1020258

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public hideSharedElements()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElementHidden:Z

    invoke-direct {p0}, Landroid/app/ActivityOptions$HideWindowListener;->hideWhenDone()V

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mTransitionEnded:Z

    invoke-direct {p0}, Landroid/app/ActivityOptions$HideWindowListener;->hideWhenDone()V

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method
