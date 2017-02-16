.class Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;
.super Ljava/lang/Object;
.source "SemClipboardManager.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataPasteEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IClipboardDataPasteEventImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl$1;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field final synthetic this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/content/clipboard/SemClipboardManager;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl$1;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/content/clipboard/SemClipboardManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;-><init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-object v0
.end method

.method public onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 2
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get3(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$IClipboardDataPasteEventImpl;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v0}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get3(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 321
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string/jumbo v0, "SemClipboardManager"

    const-string/jumbo v1, "mPasteListener is null"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
