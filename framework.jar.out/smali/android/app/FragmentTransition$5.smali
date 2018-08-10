.class final Landroid/app/FragmentTransition$5;
.super Landroid/transition/TransitionListenerAdapter;
.source "FragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentTransition;->scheduleRemoveTargets(Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Landroid/transition/Transition;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/TransitionSet;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/TransitionSet;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FragmentTransition$5;->val$enterTransition:Landroid/transition/Transition;

    iput-object p2, p0, Landroid/app/FragmentTransition$5;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/app/FragmentTransition$5;->val$exitTransition:Landroid/transition/Transition;

    iput-object p4, p0, Landroid/app/FragmentTransition$5;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/app/FragmentTransition$5;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    iput-object p6, p0, Landroid/app/FragmentTransition$5;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/FragmentTransition$5;->val$enterTransition:Landroid/transition/Transition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/FragmentTransition$5;->val$enterTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/FragmentTransition$5;->val$enteringViews:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Landroid/app/FragmentTransition$5;->val$exitTransition:Landroid/transition/Transition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/FragmentTransition$5;->val$exitTransition:Landroid/transition/Transition;

    iget-object v1, p0, Landroid/app/FragmentTransition$5;->val$exitingViews:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, Landroid/app/FragmentTransition$5;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/FragmentTransition$5;->val$sharedElementTransition:Landroid/transition/TransitionSet;

    iget-object v1, p0, Landroid/app/FragmentTransition$5;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/app/FragmentTransition;->replaceTargets(Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
