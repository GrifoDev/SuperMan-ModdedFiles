.class Lcom/android/server/enterprise/firewall/DomainFilter$3$1;
.super Ljava/lang/Object;
.source "DomainFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/DomainFilter$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/firewall/DomainFilter$3;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$3$1;->this$1:Lcom/android/server/enterprise/firewall/DomainFilter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter$3$1;->this$1:Lcom/android/server/enterprise/firewall/DomainFilter$3;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter$3;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-wrap8(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    return-void
.end method
