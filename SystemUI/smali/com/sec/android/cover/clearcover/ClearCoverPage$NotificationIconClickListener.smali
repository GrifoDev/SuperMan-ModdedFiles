.class Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;
.super Ljava/lang/Object;
.source "ClearCoverPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationIconClickListener"
.end annotation


# instance fields
.field private sbn:Landroid/service/notification/StatusBarNotification;

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;->sbn:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->OPEN_COVER_NOTIFICATIONS:Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-wrap1(Lcom/sec/android/cover/clearcover/ClearCoverPage;Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-set0(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0, v2}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-set4(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-set2(Lcom/sec/android/cover/clearcover/ClearCoverPage;Z)Z

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$NotificationIconClickListener;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0, v2}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-set3(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    return-void
.end method
