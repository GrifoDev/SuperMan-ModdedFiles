.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field roaming:Z

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;->roaming:Z

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;->roaming:Z

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-static {v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->-get2(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/16 v2, 0x3ef

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
