.class Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$2;
.super Ljava/lang/Object;
.source "GlobalActionsFrameLayoutSViewCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;->showAllView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

.field final synthetic val$tempView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$2;->this$0:Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover;

    iput-object p2, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$2;->val$tempView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/globalactions/GlobalActionsFrameLayoutSViewCover$2;->val$tempView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
