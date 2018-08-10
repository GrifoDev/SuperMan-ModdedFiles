.class Landroid/support/v17/leanback/app/BaseFragment$1;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BaseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BaseFragment;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseFragment$1;->this$0:Landroid/support/v17/leanback/app/BaseFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseFragment$1;->this$0:Landroid/support/v17/leanback/app/BaseFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BaseFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->show()V

    return-void
.end method
