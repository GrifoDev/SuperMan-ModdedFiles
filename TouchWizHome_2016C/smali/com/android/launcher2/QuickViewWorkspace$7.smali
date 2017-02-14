.class Lcom/android/launcher2/QuickViewWorkspace$7;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickViewWorkspace;->makeScreen(IZ)Landroid/view/View;
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

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$7;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$7;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->getInstance()Lcom/android/launcher2/ZeroPageUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/android/launcher2/QuickViewWorkspace;->showZeroPageDownloadDialog(Lcom/android/launcher2/ZeroPageListItem;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/QuickViewWorkspace;->access$500(Lcom/android/launcher2/QuickViewWorkspace;Lcom/android/launcher2/ZeroPageListItem;Z)V

    :cond_0
    return-void
.end method
