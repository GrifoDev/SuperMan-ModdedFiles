.class Lcom/android/server/clipboardex/ClipboardExService$ClipboardPolicyChangedListenerImpl;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipboardPolicyChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipboardPolicyChangedListenerImpl;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$ClipboardPolicyChangedListenerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ClipboardPolicyChangedListenerImpl;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    const-string/jumbo v0, "ClipboardExService"

    const-string/jumbo v1, "ClipboardPolicyChangedListenerImpl.onChanged is called."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipboardPolicyChangedListenerImpl;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipboardPolicyChangedListenerImpl;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v1}, Lcom/android/server/clipboardex/ClipboardExService;->getPersonaId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap6(Lcom/android/server/clipboardex/ClipboardExService;I)V

    return-void
.end method
