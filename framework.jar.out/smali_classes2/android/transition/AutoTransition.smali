.class public Landroid/transition/AutoTransition;
.super Landroid/transition/TransitionSet;
.source "AutoTransition.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    .line 39
    invoke-direct {p0}, Landroid/transition/AutoTransition;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/transition/TransitionSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Landroid/transition/AutoTransition;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 48
    invoke-virtual {p0, v2}, Landroid/transition/AutoTransition;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 49
    new-instance v0, Landroid/transition/Fade;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/transition/Fade;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/transition/AutoTransition;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    .line 50
    new-instance v1, Landroid/transition/ChangeBounds;

    invoke-direct {v1}, Landroid/transition/ChangeBounds;-><init>()V

    .line 49
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/transition/Fade;

    invoke-direct {v1, v2}, Landroid/transition/Fade;-><init>(I)V

    .line 49
    invoke-virtual {v0, v1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 47
    return-void
.end method
