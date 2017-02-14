.class final Lcn/com/xy/sms/util/s;
.super Ljava/lang/Thread;
.source "Unknown"


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:J

.field private final synthetic f:Z

.field private final synthetic g:Z

.field private final synthetic h:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lcn/com/xy/sms/util/s;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/util/s;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/s;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/s;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcn/com/xy/sms/util/s;->e:J

    iput-boolean p7, p0, Lcn/com/xy/sms/util/s;->f:Z

    iput-boolean p8, p0, Lcn/com/xy/sms/util/s;->g:Z

    iput-object p9, p0, Lcn/com/xy/sms/util/s;->h:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :try_start_0
    const-string/jumbo v0, "xiaoyuan-parseSmsToBubble"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/util/s;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/com/xy/sms/util/s;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/util/s;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/util/s;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/util/s;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcn/com/xy/sms/util/s;->e:J

    const/4 v6, 0x3

    iget-boolean v7, p0, Lcn/com/xy/sms/util/s;->f:Z

    iget-boolean v8, p0, Lcn/com/xy/sms/util/s;->g:Z

    iget-object v9, p0, Lcn/com/xy/sms/util/s;->h:Ljava/util/Map;

    invoke-static/range {v0 .. v9}, Lcn/com/xy/sms/util/ParseSmsToBubbleUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIZZLjava/util/Map;)Ljava/util/Map;
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
