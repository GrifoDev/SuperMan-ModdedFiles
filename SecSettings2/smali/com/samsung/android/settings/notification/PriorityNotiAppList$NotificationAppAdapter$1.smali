.class Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;
.super Ljava/lang/Object;
.source "PriorityNotiAppList.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->bindView(Landroid/view/View;Lcom/samsung/android/settings/notification/PriorityNotiAppList$Row;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private listener:Lcom/samsung/android/settings/notification/PriorityNotiAppList$ClickListener;

.field final synthetic this$1:Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

.field final synthetic val$row:Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;

.field final synthetic val$vh:Lcom/samsung/android/settings/notification/PriorityNotiAppList$ViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;Lcom/samsung/android/settings/notification/PriorityNotiAppList$ViewHolder;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->this$1:Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$row:Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;

    iput-object p3, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$vh:Lcom/samsung/android/settings/notification/PriorityNotiAppList$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$ClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/notification/PriorityNotiAppList$ClickListener;-><init>(Lcom/samsung/android/settings/notification/PriorityNotiAppList$ClickListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->listener:Lcom/samsung/android/settings/notification/PriorityNotiAppList$ClickListener;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->this$1:Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get4(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$row:Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;

    iget-object v1, v1, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$row:Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;

    iget v2, v2, Lcom/samsung/android/settings/notification/PriorityNotiAppList$AppRow;->uid:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settings/notification/NotificationBackend;->setBypassZenMode(Ljava/lang/String;IZ)Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$vh:Lcom/samsung/android/settings/notification/PriorityNotiAppList$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->val$vh:Lcom/samsung/android/settings/notification/PriorityNotiAppList$ViewHolder;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->listener:Lcom/samsung/android/settings/notification/PriorityNotiAppList$ClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->this$1:Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->-get5(Lcom/samsung/android/settings/notification/PriorityNotiAppList;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->this$1:Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f10013b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter$1;->this$1:Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->this$0:Lcom/samsung/android/settings/notification/PriorityNotiAppList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/PriorityNotiAppList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100144

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz p2, :cond_1

    const/16 v0, 0x3e8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
