.class final Lcn/com/xy/sms/util/i;
.super Landroid/content/BroadcastReceiver;
.source "Unknown"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cn.com.xy.sms.iccidinfo.action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "iccid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/db/entity/IccidInfoManager;->queryIccidInfo(Ljava/lang/String;Landroid/content/Context;)Lcn/com/xy/sms/sdk/db/entity/IccidInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->areaCode:Ljava/lang/String;

    iget-object v3, v1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->operator:Ljava/lang/String;

    iget-object v4, v1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userAreacode:Ljava/lang/String;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/db/entity/IccidInfo;->userOperator:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v1}, Lcn/com/xy/sms/sdk/iccid/IccidLocationUtil;->putIccidAreaCodeToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method
