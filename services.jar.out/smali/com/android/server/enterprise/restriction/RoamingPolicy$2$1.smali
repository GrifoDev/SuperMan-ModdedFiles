.class Lcom/android/server/enterprise/restriction/RoamingPolicy$2$1;
.super Landroid/telephony/PhoneStateListener;
.source "RoamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/restriction/RoamingPolicy$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/restriction/RoamingPolicy$2;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/restriction/RoamingPolicy$2;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$2$1;->this$1:Lcom/android/server/enterprise/restriction/RoamingPolicy$2;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    const-string/jumbo v0, "RoamingPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RoamingSyncDisabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RoamingPolicy$2$1;->this$1:Lcom/android/server/enterprise/restriction/RoamingPolicy$2;

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RoamingPolicy$2;->this$0:Lcom/android/server/enterprise/restriction/RoamingPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->-wrap0(Lcom/android/server/enterprise/restriction/RoamingPolicy;)V

    return-void
.end method
