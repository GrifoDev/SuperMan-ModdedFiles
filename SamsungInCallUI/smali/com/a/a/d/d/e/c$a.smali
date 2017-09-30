.class Lcom/a/a/d/d/e/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/d/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;[B)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/a/a/d/d/a/o;

    invoke-direct {v0, p1, p2}, Lcom/a/a/d/d/a/o;-><init>(Ljava/io/InputStream;[B)V

    return-object v0
.end method
