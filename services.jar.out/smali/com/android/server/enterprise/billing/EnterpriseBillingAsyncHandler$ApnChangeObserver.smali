.class Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "EnterpriseBillingAsyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string/jumbo v1, "EnterpriseBillingAsyncHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ApnChangeObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->-get1(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$ApnChangeObserver;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->-get1(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
