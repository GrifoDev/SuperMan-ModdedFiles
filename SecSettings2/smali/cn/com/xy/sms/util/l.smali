.class final Lcn/com/xy/sms/util/l;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:I

.field private final synthetic g:I

.field private final synthetic h:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/util/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/com/xy/sms/util/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/l;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/com/xy/sms/util/l;->e:Ljava/lang/String;

    iput p6, p0, Lcn/com/xy/sms/util/l;->f:I

    iput p7, p0, Lcn/com/xy/sms/util/l;->g:I

    iput-object p8, p0, Lcn/com/xy/sms/util/l;->h:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcn/com/xy/sms/util/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/com/xy/sms/util/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/util/l;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/util/l;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/com/xy/sms/util/l;->e:Ljava/lang/String;

    iget v5, p0, Lcn/com/xy/sms/util/l;->f:I

    iget v6, p0, Lcn/com/xy/sms/util/l;->g:I

    iget-object v7, p0, Lcn/com/xy/sms/util/l;->h:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/util/ParseManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcn/com/xy/sms/util/SdkCallBack;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "XIAOYUAN"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/com/xy/sms/sdk/log/LogManager;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
