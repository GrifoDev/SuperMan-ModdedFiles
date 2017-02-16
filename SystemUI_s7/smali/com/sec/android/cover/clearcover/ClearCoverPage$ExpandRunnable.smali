.class Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;
.super Ljava/lang/Object;
.source "ClearCoverPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandRunnable"
.end annotation


# instance fields
.field sbn:Landroid/service/notification/StatusBarNotification;

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;->sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p2, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;->sbn:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get1(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$ExpandRunnable;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->requestExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
