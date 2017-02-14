.class final Lcn/com/xy/sms/sdk/db/entity/z;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcn/com/xy/sms/sdk/Iservice/XyCallBack;


# instance fields
.field private final synthetic a:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/z;->a:Ljava/util/List;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/x;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/x;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "2"

    invoke-static {v0}, Lcn/com/xy/sms/sdk/db/entity/x;->b(Ljava/lang/String;)V

    return-void
.end method
