.class Lcom/sec/android/cover/clearcover/ClearCoverPage$5;
.super Ljava/lang/Object;
.source "ClearCoverPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/clearcover/ClearCoverPage;->updateNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$5;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$5;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-set4(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$5;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-set3(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$5;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-set0(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$5;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-set2(Lcom/sec/android/cover/clearcover/ClearCoverPage;Z)Z

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$5;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;->OPEN_COVER_NOTIFICATIONS:Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;

    invoke-static {v0, v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-wrap1(Lcom/sec/android/cover/clearcover/ClearCoverPage;Lcom/sec/android/cover/clearcover/ClearCoverPage$PopupType;)V

    return-void
.end method
