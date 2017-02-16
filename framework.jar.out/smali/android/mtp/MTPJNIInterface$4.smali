.class Landroid/mtp/MTPJNIInterface$4;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MTPJNIInterface;->initializeSerivce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MTPJNIInterface;


# direct methods
.method constructor <init>(Landroid/mtp/MTPJNIInterface;)V
    .locals 0
    .param p1, "this$0"    # Landroid/mtp/MTPJNIInterface;

    .prologue
    .line 1872
    iput-object p1, p0, Landroid/mtp/MTPJNIInterface$4;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 1880
    iget-object v2, p0, Landroid/mtp/MTPJNIInterface$4;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-static {v2}, Landroid/mtp/MTPJNIInterface;->-get2(Landroid/mtp/MTPJNIInterface;)[Landroid/os/Messenger;

    move-result-object v2

    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    aput-object v3, v2, v4

    .line 1881
    const-string/jumbo v2, "MTPJNIInterface"

    const-string/jumbo v3, "onServiceConnected()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1884
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/mtp/MTPJNIInterface$4;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-static {v2}, Landroid/mtp/MTPJNIInterface;->-get1(Landroid/mtp/MTPJNIInterface;)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1885
    iget-object v2, p0, Landroid/mtp/MTPJNIInterface$4;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-static {v2}, Landroid/mtp/MTPJNIInterface;->-get2(Landroid/mtp/MTPJNIInterface;)[Landroid/os/Messenger;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1879
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 1887
    :catch_0
    move-exception v0

    .line 1888
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1889
    const-string/jumbo v2, "MTPJNIInterface"

    const-string/jumbo v3, "say hello exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1875
    const-string/jumbo v0, "MTPJNIInterface"

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iget-object v0, p0, Landroid/mtp/MTPJNIInterface$4;->this$0:Landroid/mtp/MTPJNIInterface;

    invoke-static {v0}, Landroid/mtp/MTPJNIInterface;->-get2(Landroid/mtp/MTPJNIInterface;)[Landroid/os/Messenger;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1874
    return-void
.end method
