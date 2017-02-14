.class Lcom/android/launcher2/IconMoveContainer$1$1;
.super Ljava/lang/Object;
.source "IconMoveContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/IconMoveContainer$1;->onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/IconMoveContainer$1;

.field final synthetic val$fItem:Lcom/android/launcher2/HomeFolderItem;

.field final synthetic val$hItem:Lcom/android/launcher2/HomeItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/IconMoveContainer$1;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer$1$1;->this$1:Lcom/android/launcher2/IconMoveContainer$1;

    iput-object p2, p0, Lcom/android/launcher2/IconMoveContainer$1$1;->val$fItem:Lcom/android/launcher2/HomeFolderItem;

    iput-object p3, p0, Lcom/android/launcher2/IconMoveContainer$1$1;->val$hItem:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$1$1;->this$1:Lcom/android/launcher2/IconMoveContainer$1;

    iget-object v0, v0, Lcom/android/launcher2/IconMoveContainer$1;->this$0:Lcom/android/launcher2/IconMoveContainer;

    iget-object v1, p0, Lcom/android/launcher2/IconMoveContainer$1$1;->val$fItem:Lcom/android/launcher2/HomeFolderItem;

    iget-object v2, p0, Lcom/android/launcher2/IconMoveContainer$1$1;->val$hItem:Lcom/android/launcher2/HomeItem;

    # invokes: Lcom/android/launcher2/IconMoveContainer;->dissolveFolder(Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/IconMoveContainer;->access$1400(Lcom/android/launcher2/IconMoveContainer;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeItem;)V

    return-void
.end method
