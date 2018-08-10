.class Landroid/widget/TextView$TextViewClipboardEventListener$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$TextViewClipboardEventListener;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$TextViewClipboardEventListener;

.field final synthetic val$dataInner:Lcom/samsung/android/content/clipboard/data/SemClipData;


# direct methods
.method constructor <init>(Landroid/widget/TextView$TextViewClipboardEventListener;Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$TextViewClipboardEventListener$1;->this$1:Landroid/widget/TextView$TextViewClipboardEventListener;

    iput-object p2, p0, Landroid/widget/TextView$TextViewClipboardEventListener$1;->val$dataInner:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView$TextViewClipboardEventListener$1;->this$1:Landroid/widget/TextView$TextViewClipboardEventListener;

    iget-object v0, v0, Landroid/widget/TextView$TextViewClipboardEventListener;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$TextViewClipboardEventListener$1;->val$dataInner:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-static {v0, v1}, Landroid/widget/TextView;->-wrap8(Landroid/widget/TextView;Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    return-void
.end method
