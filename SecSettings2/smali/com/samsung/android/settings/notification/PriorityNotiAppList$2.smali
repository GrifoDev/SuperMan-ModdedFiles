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
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-wrap1(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get3(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get3(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get15(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b140c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$2;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
