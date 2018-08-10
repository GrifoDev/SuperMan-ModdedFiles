.class Landroid/support/v17/leanback/app/DetailsFragment$2;
.super Landroid/support/v17/leanback/util/StateMachine$State;
.source "DetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsFragment;Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsFragment$2;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v17/leanback/util/StateMachine$State;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsFragment$2;->this$0:Landroid/support/v17/leanback/app/DetailsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/DetailsFragment;->switchToVideoBeforeVideoFragmentCreated()V

    return-void
.end method
