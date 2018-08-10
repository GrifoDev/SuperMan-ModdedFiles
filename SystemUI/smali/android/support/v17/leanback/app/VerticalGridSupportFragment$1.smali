.class Landroid/support/v17/leanback/app/VerticalGridSupportFragment$1;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "VerticalGridSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/VerticalGridSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/VerticalGridSupportFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/VerticalGridSupportFragment$1;->this$0:Landroid/support/v17/leanback/app/VerticalGridSupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/VerticalGridSupportFragment;->setEntranceTransitionState(Z)V

    return-void
.end method
