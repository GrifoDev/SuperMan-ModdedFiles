.class Landroid/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v8}, Landroid/app/ProgressDialog;->-get0(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v8}, Landroid/app/ProgressDialog;->-get0(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v8}, Landroid/app/ProgressDialog;->-get2(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v8}, Landroid/app/ProgressDialog;->-get2(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v8}, Landroid/app/ProgressDialog;->-get1(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v8}, Landroid/app/ProgressDialog;->-get1(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v8}, Landroid/app/ProgressDialog;->-get4(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v8

    if-eqz v8, :cond_3

    int-to-double v8, v4

    int-to-double v10, v1

    div-double v2, v8, v10

    new-instance v5, Landroid/text/SpannableString;

    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v8}, Landroid/app/ProgressDialog;->-get4(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/StyleSpan;

    iget-object v9, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v9}, Landroid/app/ProgressDialog;->-get5(Landroid/app/ProgressDialog;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v7

    :cond_0
    invoke-direct {v8, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v9, 0x21

    invoke-virtual {v5, v8, v7, v6, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v6}, Landroid/app/ProgressDialog;->-get3(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v8}, Landroid/app/ProgressDialog;->-get1(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v8

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v8}, Landroid/app/ProgressDialog;->-get1(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v6}, Landroid/app/ProgressDialog;->-get3(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
