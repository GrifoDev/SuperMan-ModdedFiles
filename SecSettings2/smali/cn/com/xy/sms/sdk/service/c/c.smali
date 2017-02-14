.class final Lcn/com/xy/sms/sdk/service/c/c;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/util/List;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/service/c/c;->a:Ljava/util/List;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/service/c/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/sdk/service/c/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/sdk/service/c/c;->d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcn/com/xy/sms/sdk/service/c/c;->a:Ljava/util/List;

    iget-object v1, p0, Lcn/com/xy/sms/sdk/service/c/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/sdk/service/c/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/sdk/service/c/c;->d:Lcn/com/xy/sms/sdk/Iservice/XyCallBack;

    const/4 v4, 0x2

    const/4 v1, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcn/com/xy/sms/sdk/service/c/a;->a(Ljava/util/List;ZLjava/lang/String;Lcn/com/xy/sms/sdk/Iservice/XyCallBack;I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
