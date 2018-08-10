.class Landroid/view/ViewRootImpl$3;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-get1(Landroid/view/ViewRootImpl;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-set0(Landroid/view/ViewRootImpl;I)I

    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-get1(Landroid/view/ViewRootImpl;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v2}, Landroid/view/ViewRootImpl;->-set0(Landroid/view/ViewRootImpl;I)I

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-get1(Landroid/view/ViewRootImpl;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-get8(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->semIsInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-wrap20(Landroid/view/ViewRootImpl;)V

    :cond_1
    return-void
.end method
