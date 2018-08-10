.class Lcom/att/iqi/IQIServiceBroker$5$1;
.super Ljava/lang/Object;
.source "IQIServiceBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/IQIServiceBroker$5;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/att/iqi/IQIServiceBroker$5;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker$5;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$5$1;->this$1:Lcom/att/iqi/IQIServiceBroker$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$5$1;->this$1:Lcom/att/iqi/IQIServiceBroker$5;

    iget-object v1, v0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$5$1;->this$1:Lcom/att/iqi/IQIServiceBroker$5;

    iget-object v0, v0, Lcom/att/iqi/IQIServiceBroker$5;->this$0:Lcom/att/iqi/IQIServiceBroker;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/att/iqi/IQIServiceBroker;->-set0(Lcom/att/iqi/IQIServiceBroker;Lcom/att/iqi/IIQIService;)Lcom/att/iqi/IIQIService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
