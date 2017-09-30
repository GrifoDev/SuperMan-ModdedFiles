.class Lcom/a/a/e/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/e/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/e/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/e/n;


# direct methods
.method private constructor <init>(Lcom/a/a/e/n;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/e/n$a;->a:Lcom/a/a/e/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/e/n;Lcom/a/a/e/n$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/e/n$a;-><init>(Lcom/a/a/e/n;)V

    return-void
.end method
