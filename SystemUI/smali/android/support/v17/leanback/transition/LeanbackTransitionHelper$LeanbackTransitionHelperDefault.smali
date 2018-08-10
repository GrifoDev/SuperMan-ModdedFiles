.class Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperDefault;
.super Ljava/lang/Object;
.source "LeanbackTransitionHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/transition/LeanbackTransitionHelper$LeanbackTransitionHelperVersion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/transition/LeanbackTransitionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LeanbackTransitionHelperDefault"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadTitleInTransition(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$transition;->lb_title_in:I

    invoke-static {p1, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadTitleOutTransition(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$transition;->lb_title_out:I

    invoke-static {p1, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
