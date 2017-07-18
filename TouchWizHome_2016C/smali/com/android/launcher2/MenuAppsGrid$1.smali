.class Lcom/android/launcher2/MenuAppsGrid$1;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid;->createFolderFromDrag(ILjava/util/List;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;

.field final synthetic val$currentFolderItem:Lcom/android/launcher2/FolderItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/FolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$1;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$1;->val$currentFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$1;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$1;->val$currentFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-virtual {v1, v2, v4}, Lcom/android/launcher2/MenuAppsGrid;->openFolder(Lcom/android/launcher2/FolderItem;Z)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$1;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0900d2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0900db

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    return-void
.end method
