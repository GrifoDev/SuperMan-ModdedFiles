.class Lcom/android/launcher2/MenuAppsGrid$2;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid;->removeFolderFromDrag(Lcom/android/launcher2/AppFolderItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;

.field final synthetic val$folderItem:Lcom/android/launcher2/AppFolderItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/AppFolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$2;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$2;->val$folderItem:Lcom/android/launcher2/AppFolderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$2;->val$folderItem:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$2;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    return-void
.end method
