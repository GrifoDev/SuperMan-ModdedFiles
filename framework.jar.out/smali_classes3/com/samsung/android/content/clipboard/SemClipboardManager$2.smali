.class Lcom/samsung/android/content/clipboard/SemClipboardManager$2;
.super Landroid/os/Handler;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;->addData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;ZZZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const v3, 0x103012b

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get1(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v2, 0x10401cd

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1, v5}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-set0(Lcom/samsung/android/content/clipboard/SemClipboardManager;Z)Z

    :cond_2
    :goto_1
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "success set data "

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v2, 0x10401cc

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->getPersonaId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isClipboardAllowedToUse(I)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v2, 0x10401d0

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v2, 0x1040a4b

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_5
    const-string/jumbo v1, "SemClipboardManager"

    const-string/jumbo v2, "Fail set data "

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v1}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$2;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-static {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->-get0(Lcom/samsung/android/content/clipboard/SemClipboardManager;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x10401ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
