.class Lcom/android/launcher2/QuickViewWorkspace$17;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$17;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/QuickViewWorkspace$17;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/QuickViewWorkspace;->mZeropageDownloadDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/launcher2/QuickViewWorkspace;->access$1202(Lcom/android/launcher2/QuickViewWorkspace;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
