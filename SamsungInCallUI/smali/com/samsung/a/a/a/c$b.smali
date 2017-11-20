.class public Lcom/samsung/a/a/a/c$b;
.super Lcom/samsung/a/a/a/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/a/a/a/c$c",
        "<",
        "Lcom/samsung/a/a/a/c$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/a/a/a/c$c;-><init>(Lcom/samsung/a/a/a/c$1;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/a/a/a/c$b;
    .locals 0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/a/a/a/c$b;
    .locals 3

    const/16 v2, 0x64

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "exm"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/a/a/a/c$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/c$c;

    :cond_0
    return-object p0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "t"

    const-string v1, "ex"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/a/a/a/c$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/c$c;

    const-string v0, "ext"

    const-string v1, "ex"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/a/a/a/c$b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/c$c;

    invoke-super {p0}, Lcom/samsung/a/a/a/c$c;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()J
    .locals 2

    invoke-super {p0}, Lcom/samsung/a/a/a/c$c;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method protected synthetic d()Lcom/samsung/a/a/a/c$c;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/a/a/a/c$b;->a()Lcom/samsung/a/a/a/c$b;

    move-result-object v0

    return-object v0
.end method
