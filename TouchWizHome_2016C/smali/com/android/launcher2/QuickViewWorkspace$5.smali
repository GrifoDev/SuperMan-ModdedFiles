.class Lcom/android/launcher2/QuickViewWorkspace$5;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/Number;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9}, Lcom/android/launcher2/QuickViewWorkspace;->isGridSelectMenuOpened()Z

    move-result v9

    if-nez v9, :cond_0

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v9

    if-eq v9, v5, :cond_2

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/launcher2/HomeView;->setHomeDefaultIconClick(Z)V

    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iget-object v9, v9, Lcom/android/launcher2/QuickViewWorkspace;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v9, v5}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->setHomeScreenAt(I)V

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_8

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9, v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v9, v0, Landroid/view/ViewGroup;

    if-eqz v9, :cond_4

    move-object v9, v0

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v9, v2, Landroid/widget/CompoundButton;

    if-eqz v9, :cond_3

    instance-of v9, v2, Landroid/widget/CheckBox;

    if-nez v9, :cond_3

    move-object v9, v2

    check-cast v9, Landroid/widget/CompoundButton;

    if-ne v4, v5, :cond_5

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800c8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0800c8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v11}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080039

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v9, v2

    check-cast v9, Landroid/widget/CompoundButton;

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_6

    :goto_3
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v10}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080039

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    check-cast v2, Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0800c8

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_4
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_6
    move-object v7, v6

    goto :goto_3

    :cond_7
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9}, Lcom/android/launcher2/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f08008e

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_8
    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v9}, Lcom/android/launcher2/QuickViewWorkspace;->invalidate()V

    iget-object v9, p0, Lcom/android/launcher2/QuickViewWorkspace$5;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # getter for: Lcom/android/launcher2/QuickViewWorkspace;->mWorkspace:Lcom/android/launcher2/Workspace;
    invoke-static {v9}, Lcom/android/launcher2/QuickViewWorkspace;->access$100(Lcom/android/launcher2/QuickViewWorkspace;)Lcom/android/launcher2/Workspace;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher2/Workspace;->invalidate()V

    goto/16 :goto_0
.end method
