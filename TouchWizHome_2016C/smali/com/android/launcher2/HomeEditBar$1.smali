.class Lcom/android/launcher2/HomeEditBar$1;
.super Ljava/lang/Object;
.source "HomeEditBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/HomeEditBar;->collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/HomeEditBar;

.field final synthetic val$canAddToPersonal:Z

.field final synthetic val$canShowDelete:Z

.field final synthetic val$canShowDisableContainer:Z

.field final synthetic val$canShowLock:Z

.field final synthetic val$canShowMoveApps:Z

.field final synthetic val$canShowUninstallContainer:Z

.field final synthetic val$canShowUnlock:Z

.field final synthetic val$isAppItem:Z

.field final synthetic val$isHomePendingWidgetItem:Z

.field final synthetic val$isHomeWidgetItem:Z

.field final synthetic val$notAFolder:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/HomeEditBar;ZZZZZZZZZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    iput-boolean p2, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowUninstallContainer:Z

    iput-boolean p3, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowDisableContainer:Z

    iput-boolean p4, p0, Lcom/android/launcher2/HomeEditBar$1;->val$isAppItem:Z

    iput-boolean p5, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canAddToPersonal:Z

    iput-boolean p6, p0, Lcom/android/launcher2/HomeEditBar$1;->val$isHomePendingWidgetItem:Z

    iput-boolean p7, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowLock:Z

    iput-boolean p8, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowUnlock:Z

    iput-boolean p9, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowDelete:Z

    iput-boolean p10, p0, Lcom/android/launcher2/HomeEditBar$1;->val$notAFolder:Z

    iput-boolean p11, p0, Lcom/android/launcher2/HomeEditBar$1;->val$isHomeWidgetItem:Z

    iput-boolean p12, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowMoveApps:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;
    invoke-static {v0, v6}, Lcom/android/launcher2/HomeEditBar;->access$102(Lcom/android/launcher2/HomeEditBar;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowUninstallContainer:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Ljava/util/List;

    move-result-object v0

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v6}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v6

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v6}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowDisableContainer:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUninstall:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$isAppItem:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowDisableContainer:Z

    if-eqz v0, :cond_e

    move v0, v3

    :goto_2
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowDisableContainer:Z

    if-eqz v0, :cond_f

    move v0, v4

    :goto_3
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$600(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowDisableContainer:Z

    if-eqz v6, :cond_10

    :goto_4
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDisable:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->access$400(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v4

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$700(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$700(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canAddToPersonal:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$700(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mAddToPersonal:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->access$700(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v4

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$800(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$800(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$isHomePendingWidgetItem:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$isAppItem:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_4
    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$800(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mCancel:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->access$800(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v4

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$900(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$900(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowLock:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_7
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$900(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mLock:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->access$900(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v4

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$1000(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$1000(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowUnlock:Z

    if-eqz v0, :cond_14

    move v0, v1

    :goto_8
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$1000(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mUnlock:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->access$1000(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v4

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$1100(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$1100(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowDelete:Z

    if-eqz v0, :cond_15

    move v0, v1

    :goto_9
    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$1100(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$notAFolder:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$1100(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f0800ac

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_a
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar;->access$1100(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v4

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v4}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$1200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$1200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/launcher2/HomeEditBar$1;->val$canShowMoveApps:Z

    if-eqz v4, :cond_a

    move v2, v1

    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$1200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mMoveApps:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar;->access$1200(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v2

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/launcher2/HomeEditBar$Item;->access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeEditBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mVisibleList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$100(Lcom/android/launcher2/HomeEditBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_17

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # invokes: Lcom/android/launcher2/HomeEditBar;->setContainerMargin(Z)V
    invoke-static {v0, v3}, Lcom/android/launcher2/HomeEditBar;->access$1300(Lcom/android/launcher2/HomeEditBar;Z)V

    :goto_b
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # setter for: Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar;->access$1402(Lcom/android/launcher2/HomeEditBar;Z)Z

    return-void

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_1

    :cond_e
    move v0, v1

    goto/16 :goto_2

    :cond_f
    move v0, v5

    goto/16 :goto_3

    :cond_10
    move v4, v5

    goto/16 :goto_4

    :cond_11
    move v0, v2

    goto/16 :goto_5

    :cond_12
    move v0, v2

    goto/16 :goto_6

    :cond_13
    move v0, v2

    goto/16 :goto_7

    :cond_14
    move v0, v2

    goto/16 :goto_8

    :cond_15
    move v0, v2

    goto/16 :goto_9

    :cond_16
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar$1;->val$isHomeWidgetItem:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # getter for: Lcom/android/launcher2/HomeEditBar;->mDelete:Lcom/android/launcher2/HomeEditBar$Item;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->access$1100(Lcom/android/launcher2/HomeEditBar;)Lcom/android/launcher2/HomeEditBar$Item;

    move-result-object v0

    # getter for: Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar$Item;->access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;

    move-result-object v0

    const v4, 0x7f0800a6

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a

    :cond_17
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$1;->this$0:Lcom/android/launcher2/HomeEditBar;

    # invokes: Lcom/android/launcher2/HomeEditBar;->setContainerMargin(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/HomeEditBar;->access$1300(Lcom/android/launcher2/HomeEditBar;Z)V

    goto :goto_b
.end method
