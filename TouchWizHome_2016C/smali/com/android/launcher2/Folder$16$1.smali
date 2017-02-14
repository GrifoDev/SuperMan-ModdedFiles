.class Lcom/android/launcher2/Folder$16$1;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder$16;->onCompleted(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Folder$16;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder$16;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$16$1;->this$1:Lcom/android/launcher2/Folder$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->onBackPressed()V

    iget-object v0, p0, Lcom/android/launcher2/Folder$16$1;->this$1:Lcom/android/launcher2/Folder$16;

    iget-object v0, v0, Lcom/android/launcher2/Folder$16;->this$0:Lcom/android/launcher2/Folder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Folder;->dismissEditingName(Z)V

    iget-object v0, p0, Lcom/android/launcher2/Folder$16$1;->this$1:Lcom/android/launcher2/Folder$16;

    iget-object v0, v0, Lcom/android/launcher2/Folder$16;->this$0:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderName:Lcom/android/launcher2/FolderEditText;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderEditText;->clearFocus()V

    return-void
.end method
