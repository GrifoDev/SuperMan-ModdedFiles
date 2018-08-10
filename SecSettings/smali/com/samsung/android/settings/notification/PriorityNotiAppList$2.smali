.class Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;
.super Ljava/lang/Object;
.source "PriorityNotiAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/PriorityNotiAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-wrap1(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get3(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get3(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get16(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f121305

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getPendingState()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "PriorityAppNotificationsOn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get3(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get15(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;

    iget-object v5, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->priority:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotificationsOn"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotifications"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get7(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v6}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get12(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotificationsOn"

    const-string/jumbo v7, "AlreadyOn"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotifications"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    :cond_6
    return-void

    :cond_7
    const-string/jumbo v5, "PriorityAppNotificationsOff"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_4
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get3(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get15(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;

    iget-object v5, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_9

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->priority:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotificationsOff"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotifications"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get7(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v6}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get12(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    return-void

    :cond_8
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotificationsOff"

    const-string/jumbo v7, "AlreadyOff"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    const-string/jumbo v6, "PriorityAppNotifications"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    goto :goto_5

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v5}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get6(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_3
.end method
