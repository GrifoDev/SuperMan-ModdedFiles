.class Landroid/app/ActivityTransitionState$2;
.super Ljava/lang/Object;
.source "ActivityTransitionState.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityTransitionState;->startExitBackTransition(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityTransitionState;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finalDecor:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/app/ActivityTransitionState;Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityTransitionState$2;->this$0:Landroid/app/ActivityTransitionState;

    iput-object p2, p0, Landroid/app/ActivityTransitionState$2;->val$finalDecor:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/app/ActivityTransitionState$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityTransitionState$2;->val$finalDecor:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/app/ActivityTransitionState$2;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-get1(Landroid/app/ActivityTransitionState;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityTransitionState$2;->this$0:Landroid/app/ActivityTransitionState;

    invoke-static {v0}, Landroid/app/ActivityTransitionState;->-get1(Landroid/app/ActivityTransitionState;)Landroid/app/ExitTransitionCoordinator;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityTransitionState$2;->val$activity:Landroid/app/Activity;

    iget v1, v1, Landroid/app/Activity;->mResultCode:I

    iget-object v2, p0, Landroid/app/ActivityTransitionState$2;->val$activity:Landroid/app/Activity;

    iget-object v2, v2, Landroid/app/Activity;->mResultData:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/ExitTransitionCoordinator;->startExit(ILandroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
