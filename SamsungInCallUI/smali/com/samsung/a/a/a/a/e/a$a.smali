.class Lcom/samsung/a/a/a/a/e/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/a/a/a/a/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/samsung/a/a/a/a/e/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/a/a/a/a/e/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/a/a/a/a/e/a;-><init>(Lcom/samsung/a/a/a/a/e/a$1;)V

    sput-object v0, Lcom/samsung/a/a/a/a/e/a$a;->a:Lcom/samsung/a/a/a/a/e/a;

    return-void
.end method

.method static synthetic a()Lcom/samsung/a/a/a/a/e/a;
    .locals 1

    sget-object v0, Lcom/samsung/a/a/a/a/e/a$a;->a:Lcom/samsung/a/a/a/a/e/a;

    return-object v0
.end method
