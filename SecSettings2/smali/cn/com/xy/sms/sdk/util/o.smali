.class public final Lcn/com/xy/sms/sdk/util/o;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcn/com/xy/sms/sdk/util/o;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcn/com/xy/sms/sdk/util/o;->b:Ljava/lang/String;

    iput-object p1, p0, Lcn/com/xy/sms/sdk/util/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/com/xy/sms/sdk/util/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/com/xy/sms/sdk/util/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lcn/com/xy/sms/sdk/util/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method
