.class Lcom/android/launcher2/FolderPagedView$2;
.super Ljava/lang/Object;
.source "FolderPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderPagedView;->syncItemViewOnRemoveItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderPagedView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderPagedView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderPagedView$2;->this$0:Lcom/android/launcher2/FolderPagedView;

    iput-object p2, p0, Lcom/android/launcher2/FolderPagedView$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderPagedView$2;->val$v:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/FolderPagedView$2;->val$v:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
