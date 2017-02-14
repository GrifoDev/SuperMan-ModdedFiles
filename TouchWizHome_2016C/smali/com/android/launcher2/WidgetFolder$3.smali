.class Lcom/android/launcher2/WidgetFolder$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/WidgetFolder;->animateClose(Z)V
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

    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder$3;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$3;->this$0:Lcom/android/launcher2/WidgetFolder;

    # invokes: Lcom/android/launcher2/WidgetFolder;->onCloseComplete()V
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$500(Lcom/android/launcher2/WidgetFolder;)V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$3;->this$0:Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/launcher2/WidgetFolder;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$3;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderPagedView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$3;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mPagedView:Lcom/android/launcher2/WidgetFolderPagedView;
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$600(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/WidgetFolderPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolderPagedView;->clearAndRemoveAllViews()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$3;->this$0:Lcom/android/launcher2/WidgetFolder;

    # getter for: Lcom/android/launcher2/WidgetFolder;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$700(Lcom/android/launcher2/WidgetFolder;)Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder$3;->this$0:Lcom/android/launcher2/WidgetFolder;

    # invokes: Lcom/android/launcher2/WidgetFolder;->getGridLayoutOfFirstPage()Landroid/widget/GridLayout;
    invoke-static {v1}, Lcom/android/launcher2/WidgetFolder;->access$800(Lcom/android/launcher2/WidgetFolder;)Landroid/widget/GridLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    goto :goto_0
.end method
