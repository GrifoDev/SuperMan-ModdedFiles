.class Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;
.super Ljava/lang/Object;
.source "DetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaitEnterTransitionTimeout"
.end annotation


# instance fields
.field final mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v17/leanback/app/DetailsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/support/v17/leanback/app/DetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsFragment$WaitEnterTransitionTimeout;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/DetailsFragment;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/v17/leanback/app/DetailsFragment;->mStateMachine:Landroid/support/v17/leanback/util/StateMachine;

    iget-object v2, v0, Landroid/support/v17/leanback/app/DetailsFragment;->EVT_ENTER_TRANSIITON_DONE:Landroid/support/v17/leanback/util/StateMachine$Event;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/util/StateMachine;->fireEvent(Landroid/support/v17/leanback/util/StateMachine$Event;)V

    :cond_0
    return-void
.end method
