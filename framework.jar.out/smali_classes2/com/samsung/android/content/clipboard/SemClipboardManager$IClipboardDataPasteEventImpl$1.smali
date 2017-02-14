.class Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl$1;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl$1;->this$1:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl$1;->this$1:Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-void
.end method
