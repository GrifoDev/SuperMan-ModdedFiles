.class public Landroid/view/ViewStub$ViewReplaceRunnable;
.super Ljava/lang/Object;
.source "ViewStub.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewReplaceRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewStub;

.field public final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->this$0:Landroid/view/ViewStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->this$0:Landroid/view/ViewStub;

    iget-object v2, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->view:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewStub$ViewReplaceRunnable;->this$0:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v2, v0}, Landroid/view/ViewStub;->-wrap0(Landroid/view/ViewStub;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method
