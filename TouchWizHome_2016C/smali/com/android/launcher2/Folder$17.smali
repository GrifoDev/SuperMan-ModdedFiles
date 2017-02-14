.class Lcom/android/launcher2/Folder$17;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->hideSearchAppList(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/launcher2/Folder;->access$1000(Lcom/android/launcher2/Folder;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v9}, Lcom/android/launcher2/Folder;->getItemCount()I

    move-result v9

    if-ge v4, v9, :cond_6

    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v9, v4}, Lcom/android/launcher2/Folder;->getItemAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v5, :cond_5

    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    iget-object v9, v9, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/FolderContent;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderContent;->getContentView()Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v9, v3, Lcom/android/launcher2/CellLayoutNoGap;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v9, v4}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v6, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/launcher2/Folder;->access$1000(Lcom/android/launcher2/Folder;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/launcher2/Folder;->access$1000(Lcom/android/launcher2/Folder;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/launcher2/Folder;->access$1000(Lcom/android/launcher2/Folder;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/launcher2/Folder;->access$1000(Lcom/android/launcher2/Folder;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v1, v12}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_3
    if-eqz v5, :cond_2

    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v9}, Lcom/android/launcher2/Folder;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f050029

    invoke-static {v9, v10}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v9}, Lcom/android/launcher2/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b006b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v9, Lcom/android/launcher2/utils/interpolator/SineInOut33;

    invoke-direct {v9}, Lcom/android/launcher2/utils/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v9}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/launcher2/Folder;->access$1000(Lcom/android/launcher2/Folder;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/launcher2/Folder;->access$1000(Lcom/android/launcher2/Folder;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v1, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v1, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3

    :cond_6
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v9, Lcom/android/launcher2/Folder$17$1;

    invoke-direct {v9, p0}, Lcom/android/launcher2/Folder$17$1;-><init>(Lcom/android/launcher2/Folder$17;)V

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    iget-object v9, p0, Lcom/android/launcher2/Folder$17;->this$0:Lcom/android/launcher2/Folder;

    const/4 v10, 0x0

    # setter for: Lcom/android/launcher2/Folder;->mNewItems:Ljava/util/ArrayList;
    invoke-static {v9, v10}, Lcom/android/launcher2/Folder;->access$1002(Lcom/android/launcher2/Folder;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto/16 :goto_0
.end method
