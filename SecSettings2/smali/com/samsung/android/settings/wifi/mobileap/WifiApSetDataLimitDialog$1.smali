.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;
.super Ljava/lang/Object;
.source "WifiApSetDataLimitDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d020d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApSetDataLimitDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0113

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method
