.class public final Lcn/com/xy/sms/sdk/Iservice/a;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()I
    .locals 1

    iget v0, p0, Lcn/com/xy/sms/sdk/Iservice/a;->a:I

    return v0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lcn/com/xy/sms/sdk/Iservice/a;->a:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/xy/sms/sdk/Iservice/a;->b:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/xy/sms/sdk/Iservice/a;->b:Ljava/lang/String;

    return-object v0
.end method
