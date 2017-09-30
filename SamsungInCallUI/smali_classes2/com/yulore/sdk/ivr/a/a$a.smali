.class Lcom/yulore/sdk/ivr/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yulore/sdk/ivr/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/yulore/sdk/ivr/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yulore/sdk/ivr/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yulore/sdk/ivr/a/a;-><init>(Lcom/yulore/sdk/ivr/a/a$1;)V

    sput-object v0, Lcom/yulore/sdk/ivr/a/a$a;->a:Lcom/yulore/sdk/ivr/a/a;

    return-void
.end method

.method static synthetic a()Lcom/yulore/sdk/ivr/a/a;
    .locals 1

    sget-object v0, Lcom/yulore/sdk/ivr/a/a$a;->a:Lcom/yulore/sdk/ivr/a/a;

    return-object v0
.end method
