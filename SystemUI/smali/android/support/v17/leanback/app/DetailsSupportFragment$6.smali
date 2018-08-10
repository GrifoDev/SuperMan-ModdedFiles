.class Landroid/support/v17/leanback/app/DetailsSupportFragment$6;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "DetailsSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsSupportFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsSupportFragment$6;->this$0:Landroid/support/v17/leanback/app/DetailsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsSupportFragment;->onSafeStart()V

    return-void
.end method
