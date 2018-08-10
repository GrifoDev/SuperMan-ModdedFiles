.class Lcom/sec/android/cover/manager/MissedEventManager$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "MissedEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/MissedEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/MissedEventManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/MissedEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/manager/MissedEventManager$1;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitched(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/MissedEventManager$1;->this$0:Lcom/sec/android/cover/manager/MissedEventManager;

    invoke-static {v0}, Lcom/sec/android/cover/manager/MissedEventManager;->-wrap2(Lcom/sec/android/cover/manager/MissedEventManager;)V

    return-void
.end method
