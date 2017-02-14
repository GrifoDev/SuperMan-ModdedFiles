.class public final Lcn/com/xy/sms/sdk/db/entity/w;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/w;->a:Ljava/lang/String;

    iput-wide v2, p0, Lcn/com/xy/sms/sdk/db/entity/w;->b:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcn/com/xy/sms/sdk/db/entity/w;->c:Ljava/lang/String;

    iput-wide v2, p0, Lcn/com/xy/sms/sdk/db/entity/w;->d:J

    return-void
.end method
