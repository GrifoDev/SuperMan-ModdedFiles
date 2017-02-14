.class Lcom/android/launcher2/LauncherModel$14;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->addShortcutToFolderHomeOnly(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/HomeFolderItem;ILcom/android/launcher2/LauncherModel$Callbacks;ZLcom/android/launcher2/BaseItem$Type;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$folderItem:Lcom/android/launcher2/HomeFolderItem;

.field final synthetic val$item:Lcom/android/launcher2/HomeShortcutItem;

.field final synthetic val$screen:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/HomeFolderItem;Lcom/android/launcher2/HomeShortcutItem;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$14;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$14;->val$folderItem:Lcom/android/launcher2/HomeFolderItem;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$14;->val$item:Lcom/android/launcher2/HomeShortcutItem;

    iput p4, p0, Lcom/android/launcher2/LauncherModel$14;->val$screen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$14;->val$folderItem:Lcom/android/launcher2/HomeFolderItem;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$14;->val$item:Lcom/android/launcher2/HomeShortcutItem;

    iget v2, p0, Lcom/android/launcher2/LauncherModel$14;->val$screen:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/HomeFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    return-void
.end method
