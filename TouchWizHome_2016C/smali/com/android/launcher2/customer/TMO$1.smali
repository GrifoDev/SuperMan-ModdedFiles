.class Lcom/android/launcher2/customer/TMO$1;
.super Ljava/lang/Object;
.source "TMO.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/customer/TMO;->checkHomeFolderAdapt(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/customer/TMO;

.field final synthetic val$fItem:Lcom/android/launcher2/HomeFolderItem;

.field final synthetic val$hv:Lcom/android/launcher2/HomeView;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/customer/TMO;Lcom/android/launcher2/HomeView;Lcom/android/launcher2/HomeFolderItem;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/customer/TMO$1;->this$0:Lcom/android/launcher2/customer/TMO;

    iput-object p2, p0, Lcom/android/launcher2/customer/TMO$1;->val$hv:Lcom/android/launcher2/HomeView;

    iput-object p3, p0, Lcom/android/launcher2/customer/TMO$1;->val$fItem:Lcom/android/launcher2/HomeFolderItem;

    iput-object p4, p0, Lcom/android/launcher2/customer/TMO$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/customer/TMO$1;->val$hv:Lcom/android/launcher2/HomeView;

    iget-object v1, p0, Lcom/android/launcher2/customer/TMO$1;->val$fItem:Lcom/android/launcher2/HomeFolderItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V

    iget-object v0, p0, Lcom/android/launcher2/customer/TMO$1;->val$hv:Lcom/android/launcher2/HomeView;

    iget-object v1, p0, Lcom/android/launcher2/customer/TMO$1;->val$items:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->addShortcutItemsIntoExistingFolder(Ljava/util/List;)Lcom/android/launcher2/HomeFolderItem;

    return-void
.end method
