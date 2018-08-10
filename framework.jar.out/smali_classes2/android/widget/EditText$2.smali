.class Landroid/widget/EditText$2;
.super Landroid/os/Handler;
.source "EditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Landroid/widget/EditText;->-get1()Ljava/util/HashSet;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/widget/EditText;->-get0(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    invoke-static {v0, v2}, Landroid/widget/EditText;->-set0(Landroid/widget/EditText;Z)Z

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/widget/EditText;->-wrap0(Landroid/widget/EditText;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/widget/EditText;->-get0(Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Landroid/widget/EditText$2;->this$0:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/EditText;->-set0(Landroid/widget/EditText;Z)Z

    goto :goto_0
.end method
