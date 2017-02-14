.class Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseISLPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnterpriseISLpolicyReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EnterpriseISLpolicyReciever onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy$EnterpriseISLpolicyReciever;->this$0:Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;

    invoke-static {v0, p1, p2}, Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;->-wrap9(Lcom/android/server/enterprise/isl/EnterpriseISLPolicy;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
