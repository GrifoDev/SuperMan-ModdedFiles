.class Lcom/sec/android/cover/clearcover/ClearCoverPage$4;
.super Ljava/lang/Object;
.source "ClearCoverPage.java"

# interfaces
.implements Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/clearcover/ClearCoverPage;->initializeNotifications()V
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

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationsUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$4;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-wrap2(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V

    return-void
.end method
