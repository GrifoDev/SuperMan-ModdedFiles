.class Lcom/android/server/enterprise/firewall/DomainFilter$4;
.super Landroid/content/BroadcastReceiver;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/DomainFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/DomainFilter;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->-wrap0(Lcom/android/server/enterprise/firewall/DomainFilter;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.EXTRA_CAPTIVE_PORTAL_URL_INTERNAL"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->-wrap2(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-wrap1(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter$4;->this$0:Lcom/android/server/enterprise/firewall/DomainFilter;

    invoke-static {v2, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->-wrap5(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/firewall/DomainFilter;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mPortalFilterReceiver.onReceive() - invalid host"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
