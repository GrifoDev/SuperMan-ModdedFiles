.class Landroid/sec/clipboard/ClipboardUIManager$1;
.super Ljava/lang/Object;
.source "ClipboardUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/ClipboardUIManager;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/ClipboardUIManager;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/ClipboardUIManager$1;->this$0:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager$1;->this$0:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->-get1(Landroid/sec/clipboard/ClipboardUIManager;)Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/ClipboardUIManager$1;->this$0:Landroid/sec/clipboard/ClipboardUIManager;

    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager$1;->this$0:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->-get0(Landroid/sec/clipboard/ClipboardUIManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "semclipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1, v0}, Landroid/sec/clipboard/ClipboardUIManager;->-set0(Landroid/sec/clipboard/ClipboardUIManager;Lcom/samsung/android/content/clipboard/SemClipboardManager;)Lcom/samsung/android/content/clipboard/SemClipboardManager;

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager$1;->this$0:Landroid/sec/clipboard/ClipboardUIManager;

    invoke-static {v0}, Landroid/sec/clipboard/ClipboardUIManager;->-get1(Landroid/sec/clipboard/ClipboardUIManager;)Lcom/samsung/android/content/clipboard/SemClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->showDialog()V

    return-void
.end method
