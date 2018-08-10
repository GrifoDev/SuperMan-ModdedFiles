.class public Landroid/widget/TextView$TextViewClipboardEventListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Lcom/samsung/android/content/clipboard/SemClipboardManager$OnPasteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextViewClipboardEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$TextViewClipboardEventListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 3

    move-object v0, p1

    iget-object v1, p0, Landroid/widget/TextView$TextViewClipboardEventListener;->this$0:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView$TextViewClipboardEventListener$1;

    invoke-direct {v2, p0, p1}, Landroid/widget/TextView$TextViewClipboardEventListener$1;-><init>(Landroid/widget/TextView$TextViewClipboardEventListener;Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
