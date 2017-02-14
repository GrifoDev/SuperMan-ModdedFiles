.class Lcom/samsung/android/settings/nearby/AcceptListPreference$1;
.super Landroid/os/Handler;
.source "AcceptListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nearby/AcceptListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nearby/AcceptListPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nearby/AcceptListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference$1;->this$0:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    const-string/jumbo v7, "AcceptListPreference"

    const-string/jumbo v8, "mHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleMessage() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    const-string/jumbo v7, "AcceptListPreference"

    const-string/jumbo v8, "Handler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Undefined handler message :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference$1;->this$0:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->showDialog(Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference$1;->this$0:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v7}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v4, Lcom/samsung/android/settings/nearby/ListItemListener;

    invoke-direct {v4, v6}, Lcom/samsung/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/nearby/DeleteButtonListener;

    iget-object v7, p0, Lcom/samsung/android/settings/nearby/AcceptListPreference$1;->this$0:Lcom/samsung/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v7}, Lcom/samsung/android/settings/nearby/AcceptListPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v0, v4, v1, v7, v8}, Lcom/samsung/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/samsung/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v7, "AcceptListPreference"

    const-string/jumbo v8, "Handler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/samsung/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
    .end packed-switch
.end method
