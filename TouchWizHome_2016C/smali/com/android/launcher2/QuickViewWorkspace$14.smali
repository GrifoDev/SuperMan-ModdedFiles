.class Lcom/android/launcher2/QuickViewWorkspace$14;
.super Ljava/lang/Object;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickViewWorkspace;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickViewWorkspace$14;->this$0:Lcom/android/launcher2/QuickViewWorkspace;

    iput-object p2, p0, Lcom/android/launcher2/QuickViewWorkspace$14;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/QuickViewWorkspace$14;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startDownloadZeroPage(Ljava/lang/String;)V

    return-void
.end method
