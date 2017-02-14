.class Lcom/android/launcher2/Workspace$25;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->showZeroPageSettingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$25;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/launcher2/Workspace$25;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->setZeroPageSettingDialog(Landroid/content/Context;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/android/launcher2/Workspace$25;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/Workspace;->mZeroPageDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$25;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "de.axelspringer.yana.zeropage"

    invoke-static {v1, v2}, Lcom/android/launcher2/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/launcher2/ZeroPageListItem;

    const-string v1, "de.axelspringer.yana.zeropage"

    const-string v2, "de.axelspringer.yana.activities.HomeActivity"

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher2/ZeroPageListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$25;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPagePackageName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher2/Workspace$25;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPageClassName(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/launcher2/ZeroPageUtils;->setZeroPosition(I)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->setZeroPageAppName()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->unBindVirtualScreen()V

    iget-object v1, p0, Lcom/android/launcher2/Workspace$25;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v4}, Lcom/android/launcher2/Launcher;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->bindVirtualScreen()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace$25;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher2/Workspace;->animatePage(IIZ)V

    return-void
.end method
