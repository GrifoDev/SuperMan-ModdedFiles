.class Lcom/android/launcher2/IconMoveContainer$7;
.super Ljava/lang/Object;
.source "IconMoveContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/IconMoveContainer;->bulkUnload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/IconMoveContainer;

.field final synthetic val$folderParent:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher2/IconMoveContainer;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer$7;->this$0:Lcom/android/launcher2/IconMoveContainer;

    iput-object p2, p0, Lcom/android/launcher2/IconMoveContainer$7;->val$folderParent:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer$7;->val$folderParent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    goto :goto_0

    :cond_1
    return-void
.end method
