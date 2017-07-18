.class Lcom/android/launcher2/QuickViewWorkspace$16;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickViewWorkspace;->showZeroPageDownloadDialog(Lcom/android/launcher2/ZeroPageListItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/QuickViewWorkspace;

.field final synthetic val$isSwitch:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$16;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iput-boolean p2, p0, Lcom/android/launcher2/QuickViewWorkspace$16;->val$isSwitch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean v0, p0, Lcom/android/launcher2/QuickViewWorkspace$16;->val$isSwitch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$16;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-static {v0}, Lcom/android/launcher2/QuickViewWorkspace;->access$200(Lcom/android/launcher2/QuickViewWorkspace;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method
