.class Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerClipboardDataPasteEvent"
.end annotation


# instance fields
.field private mWeakOnPasteListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;->mWeakOnPasteListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;->mWeakOnPasteListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "SemClipboardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPaste mWeakOnPasteListener is null. mWeakOnPasteListener="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;->mWeakOnPasteListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;->mWeakOnPasteListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "mPasteListener is null"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPasteListener(Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$InnerClipboardDataPasteEvent;->mWeakOnPasteListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
