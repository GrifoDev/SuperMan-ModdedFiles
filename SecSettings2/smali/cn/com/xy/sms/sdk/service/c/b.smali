.class final Lcn/com/xy/sms/sdk/service/c/b;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

.field private final synthetic g:I

.field private final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;ILjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/xy/sms/sdk/service/c/b;->a:Z

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/c/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/c/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/c/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/sdk/service/c/b;->e:Ljava/lang/String;

    iput-object p6, p0, Lcn/com/xy/sms/sdk/service/c/b;->f:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iput p7, p0, Lcn/com/xy/sms/sdk/service/c/b;->g:I

    iput-object p8, p0, Lcn/com/xy/sms/sdk/service/c/b;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcn/com/xy/sms/sdk/service/c/b;->a:Z

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/b;->e:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/c/b;->f:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    iget v4, p0, Lcn/com/xy/sms/sdk/service/c/b;->g:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/util/List;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcn/com/xy/sms/sdk/service/c/b;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/b;->d:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/b;->h:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/entity/a/g;->a(Ljava/lang/String;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/b;->f:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/JsonUtil;->PubInfoToJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/b;->f:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-interface {v1, v2}, Lcn/com/xy/sms/sdk/Iservice/XyCallBack;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
