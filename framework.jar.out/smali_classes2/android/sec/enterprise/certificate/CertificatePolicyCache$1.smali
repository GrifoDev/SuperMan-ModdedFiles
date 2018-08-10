.class Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;
.super Landroid/content/BroadcastReceiver;
.source "CertificatePolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/enterprise/certificate/CertificatePolicyCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/enterprise/certificate/CertificatePolicyCache;


# direct methods
.method constructor <init>(Landroid/sec/enterprise/certificate/CertificatePolicyCache;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;->this$0:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.CERTIFICATE_POLICY_CHANGED_INTERNAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Intent received to refresh cache"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v3, "com.samsung.android.knox.intent.extra.CERTIFICATE_POLICY_TYPE_CHANGED_INTERNAL"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;->this$0:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    invoke-static {v3, v2}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->-wrap0(Landroid/sec/enterprise/certificate/CertificatePolicyCache;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/sec/enterprise/certificate/CertificatePolicyCache$1;->this$0:Landroid/sec/enterprise/certificate/CertificatePolicyCache;

    invoke-static {v3, v5}, Landroid/sec/enterprise/certificate/CertificatePolicyCache;->-wrap0(Landroid/sec/enterprise/certificate/CertificatePolicyCache;Ljava/lang/String;)V

    goto :goto_0
.end method
