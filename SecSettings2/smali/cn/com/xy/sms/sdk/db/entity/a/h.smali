.class final Lcn/com/xy/sms/sdk/db/entity/a/h;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/util/SdkCallBack;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/util/SdkCallBack;

.field private final synthetic b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcn/com/xy/sms/util/SdkCallBack;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->a:Lcn/com/xy/sms/util/SdkCallBack;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->a:Lcn/com/xy/sms/util/SdkCallBack;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v1, p1, v4

    if-eqz v1, :cond_2

    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->b:Ljava/util/HashMap;

    const-string/jumbo v2, "pubId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/a/h;->a:Lcn/com/xy/sms/util/SdkCallBack;

    new-array v1, v4, [Ljava/lang/Object;

    aget-object v2, p1, v3

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcn/com/xy/sms/util/SdkCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
