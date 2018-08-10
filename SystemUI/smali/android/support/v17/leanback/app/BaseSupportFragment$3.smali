.class Landroid/support/v17/leanback/app/BaseSupportFragment$3;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "BaseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BaseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BaseSupportFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BaseSupportFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->hide()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseSupportFragment$3;->this$0:Landroid/support/v17/leanback/app/BaseSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BaseSupportFragment;->onExecuteEntranceTransition()V

    return-void
.end method
