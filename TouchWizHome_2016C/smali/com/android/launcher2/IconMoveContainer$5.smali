.class Lcom/android/launcher2/IconMoveContainer$5;
.super Ljava/lang/Object;
.source "IconMoveContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/IconMoveContainer;->unloadItem(Landroid/view/View;Lcom/android/launcher2/BaseItem;ZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/IconMoveContainer;

.field final synthetic val$movePage:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/IconMoveContainer;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/IconMoveContainer$5;->this$0:Lcom/android/launcher2/IconMoveContainer;

    iput p2, p0, Lcom/android/launcher2/IconMoveContainer$5;->val$movePage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/IconMoveContainer$5;->this$0:Lcom/android/launcher2/IconMoveContainer;

    invoke-static {v0}, Lcom/android/launcher2/IconMoveContainer;->access$400(Lcom/android/launcher2/IconMoveContainer;)Lcom/android/launcher2/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/IconMoveContainer$5;->val$movePage:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    return-void
.end method
