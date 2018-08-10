.class Landroid/support/v17/leanback/app/BaseFragment$5;
.super Landroid/support/v17/leanback/util/StateMachine$Condition;
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
.method constructor <init>(Landroid/support/v17/leanback/app/BaseFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseFragment$5;->this$0:Landroid/support/v17/leanback/app/BaseFragment;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/util/StateMachine$Condition;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canProceed()Z
    .locals 1

    invoke-static {}, Landroid/support/v17/leanback/transition/TransitionHelper;->systemSupportsEntranceTransitions()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
