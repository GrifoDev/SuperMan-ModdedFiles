.class Landroid/text/method/MultiTapKeyListener$Timeout;
.super Landroid/os/Handler;
.source "MultiTapKeyListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/MultiTapKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Timeout"
.end annotation


# instance fields
.field private mBuffer:Landroid/text/Editable;

.field final synthetic this$0:Landroid/text/method/MultiTapKeyListener;


# direct methods
.method static synthetic -set0(Landroid/text/method/MultiTapKeyListener$Timeout;Landroid/text/Editable;)Landroid/text/Editable;
    .locals 0

    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    return-object p1
.end method

.method public constructor <init>(Landroid/text/method/MultiTapKeyListener;Landroid/text/Editable;)V
    .locals 4

    iput-object p1, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->this$0:Landroid/text/method/MultiTapKeyListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    iget-object v1, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x12

    invoke-interface {v0, p0, v2, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/text/method/MultiTapKeyListener$Timeout;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Landroid/text/method/MultiTapKeyListener$Timeout;->mBuffer:Landroid/text/Editable;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ne v3, v4, :cond_0

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v0, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    invoke-interface {v0, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
