.class Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;
.super Landroid/os/Handler;
.source "EnterpriseProxyServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EnterpriseProxyHandler"
.end annotation


# static fields
.field private static final ACTION_ON_CREDENTIALS_RECEIVED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$EnterpriseProxyHandler;->this$0:Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;

    invoke-static {v1, v0}, Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;->-wrap2(Lcom/android/server/enterprise/proxy/EnterpriseProxyServer;Lcom/android/server/enterprise/proxy/EnterpriseProxyServer$DialogReturnInformation;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
