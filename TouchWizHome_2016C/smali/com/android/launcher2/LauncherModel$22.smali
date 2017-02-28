.class Lcom/android/launcher2/LauncherModel$22;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->addShortcutHomeOnlyFromDeleteFolder(Lcom/android/launcher2/HomeItem;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/BaseItem$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

.field final synthetic val$hItem:Lcom/android/launcher2/HomeItem;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$Callbacks;Lcom/android/launcher2/HomeItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$22;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$22;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$22;->val$hItem:Lcom/android/launcher2/HomeItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$22;->val$callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$22;->val$hItem:Lcom/android/launcher2/HomeItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/LauncherModel$Callbacks;->bindHomeShortcut(Lcom/android/launcher2/HomeItem;)V

    return-void
.end method
