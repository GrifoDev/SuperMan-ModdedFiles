.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->onServiceDisconnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field final synthetic val$adapter:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get2(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$2;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter;->-get1(Landroid/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->onRemoteAdapterDisconnected()V

    :cond_0
    return-void
.end method
