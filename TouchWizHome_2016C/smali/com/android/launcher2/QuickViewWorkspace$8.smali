.class Lcom/android/launcher2/QuickViewWorkspace$8;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickViewWorkspace;->setupHomeZeroPageDualCheckBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$8;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageListItem;->getInstalled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewWorkspace$8;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ZeroPageListItem;

    # invokes: Lcom/android/launcher2/QuickViewWorkspace;->showZeroPageDownloadDialog(Lcom/android/launcher2/ZeroPageListItem;Z)V
    invoke-static {v2, v1, v3}, Lcom/android/launcher2/QuickViewWorkspace;->access$500(Lcom/android/launcher2/QuickViewWorkspace;Lcom/android/launcher2/ZeroPageListItem;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace$8;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    # invokes: Lcom/android/launcher2/QuickViewWorkspace;->updateHomeZeroPageDualCheck(I)V
    invoke-static {v1, v3}, Lcom/android/launcher2/QuickViewWorkspace;->access$600(Lcom/android/launcher2/QuickViewWorkspace;I)V

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace$8;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/QuickViewWorkspace;->setZeroItem(Lcom/android/launcher2/ZeroPageListItem;)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace$8;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/LauncherFeature;->supportZeroPageSettingDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace$8;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->setZeroPageSettingDialog(Landroid/content/Context;Z)V

    goto :goto_0
.end method
