.class Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$1;
.super Landroid/os/Handler;
.source "RemoteViewsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$1;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$1;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->updateRemoteViews()V

    return-void
.end method
