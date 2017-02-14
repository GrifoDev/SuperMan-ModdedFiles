.class Lcom/android/launcher2/FolderPagedView$1;
.super Ljava/lang/Object;
.source "FolderPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderPagedView;->invalidatePageData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderPagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderPagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderPagedView$1;->this$0:Lcom/android/launcher2/FolderPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderPagedView$1;->this$0:Lcom/android/launcher2/FolderPagedView;

    const/4 v1, -0x1

    # setter for: Lcom/android/launcher2/FolderPagedView;->mDeletedItemPos:I
    invoke-static {v0, v1}, Lcom/android/launcher2/FolderPagedView;->access$002(Lcom/android/launcher2/FolderPagedView;I)I

    iget-object v0, p0, Lcom/android/launcher2/FolderPagedView$1;->this$0:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderPagedView;->invalidatePageData()V

    return-void
.end method
