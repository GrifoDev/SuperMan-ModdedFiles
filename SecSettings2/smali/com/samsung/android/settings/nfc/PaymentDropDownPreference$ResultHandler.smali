.class public Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;
.super Landroid/os/Handler;
.source "PaymentDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v3, v3, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v0

    aput-object v5, v4, v7

    const v5, 0x7f0b094f

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v3, v3, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v3, v3, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v4, v4, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v3, v3, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v0

    aput-object v5, v4, v7

    const v5, 0x7f0b0950

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v3, v3, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mContext:Landroid/content/Context;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v4, v4, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->entries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-wrap0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
