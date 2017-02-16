.class Lcom/sec/android/cover/widget/RemoteViewContainerView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "RemoteViewContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/widget/RemoteViewContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/widget/RemoteViewContainerView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/RemoteViewContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;->this$0:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;->this$0:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v0, v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mRemoteViewType:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;->this$0:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;->this$0:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v0, v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateListener:Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/RemoteViewContainerView$1;->this$0:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iget-object v0, v0, Lcom/sec/android/cover/widget/RemoteViewContainerView;->mUpdateListener:Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;

    invoke-interface {v0, p1}, Lcom/sec/android/cover/widget/RemoteViewContainerView$OnUpdateListener;->OnUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    :cond_0
    return-void
.end method
