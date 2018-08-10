.class Landroid/support/v17/leanback/widget/GuidedActionsStylist$7;
.super Landroid/support/v17/leanback/transition/TransitionListener;
.source "GuidedActionsStylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/GuidedActionsStylist;->startExpanded(Landroid/support/v17/leanback/widget/GuidedActionsStylist$ViewHolder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionsStylist;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$7;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {p0}, Landroid/support/v17/leanback/transition/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionsStylist$7;->this$0:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->mExpandTransition:Ljava/lang/Object;

    return-void
.end method
