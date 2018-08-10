.class Landroid/app/EnterTransitionCoordinator$1;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;-><init>(Landroid/app/Activity;Landroid/os/ResultReceiver;Ljava/util/ArrayList;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$viewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/view/ViewTreeObserver;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$1;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Landroid/app/EnterTransitionCoordinator$1;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$1;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0}, Landroid/app/EnterTransitionCoordinator;->-get0(Landroid/app/EnterTransitionCoordinator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$1;->val$viewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
