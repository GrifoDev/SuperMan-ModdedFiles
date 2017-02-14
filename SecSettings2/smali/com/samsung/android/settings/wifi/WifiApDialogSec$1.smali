.class Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApDialogSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiApDialogSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const v7, 0x1090009

    const v6, 0x1090008

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-wrap0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3, v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set6(Lcom/samsung/android/settings/wifi/WifiApDialogSec;[Ljava/lang/String;)[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get21(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get22(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v5

    sub-int v5, v1, v5

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get5(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set6(Lcom/samsung/android/settings/wifi/WifiApDialogSec;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v1

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get22(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get5(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get4(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get8(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get13(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_2
.end method
