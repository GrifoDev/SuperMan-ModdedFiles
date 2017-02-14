.class public final Lcn/com/xy/sms/sdk/Iservice/b;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/Iservice/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/xy/sms/sdk/Iservice/b;->d:Ljava/util/List;

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcn/com/xy/sms/sdk/Iservice/b;->a:I

    return v0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcn/com/xy/sms/sdk/Iservice/b;->a:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/Iservice/b;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/Iservice/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/com/xy/sms/sdk/Iservice/b;->d:Ljava/util/List;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/Iservice/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/Iservice/b;->c:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/Iservice/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/com/xy/sms/sdk/Iservice/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/com/xy/sms/sdk/Iservice/b;->d:Ljava/util/List;

    return-object v0
.end method
