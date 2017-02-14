.class Lcom/android/launcher2/WidgetFolder$7;
.super Ljava/lang/Object;
.source "WidgetFolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/WidgetFolder;->repositionOpenFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/WidgetFolder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WidgetFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder$7;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$7;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$7;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$7;->this$0:Lcom/android/launcher2/WidgetFolder;

    # invokes: Lcom/android/launcher2/WidgetFolder;->layoutChildren()V
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$2400(Lcom/android/launcher2/WidgetFolder;)V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$7;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mPageRequested:I
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$2500(Lcom/android/launcher2/WidgetFolder;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$7;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mPageRequested:I
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$2500(Lcom/android/launcher2/WidgetFolder;)I

    move-result v1

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$7;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder$7;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mPageRequested:I
    invoke-static {v2}, Lcom/android/launcher2/WidgetFolder;->access$2500(Lcom/android/launcher2/WidgetFolder;)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/MenuWidgets;->snapToPageWithDir(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$7;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mPageRequested:I
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$2500(Lcom/android/launcher2/WidgetFolder;)I

    move-result v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$7;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$2300(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder$7;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mPageRequested:I
    invoke-static {v2}, Lcom/android/launcher2/WidgetFolder;->access$2500(Lcom/android/launcher2/WidgetFolder;)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/MenuWidgets;->snapToPageWithDir(II)V

    goto :goto_0
.end method
