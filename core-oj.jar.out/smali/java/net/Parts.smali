.class Ljava/net/Parts;
.super Ljava/lang/Object;
.source "URL.java"


# instance fields
.field path:Ljava/lang/String;

.field query:Ljava/lang/String;

.field ref:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x2f

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x23

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    :goto_0
    iput-object v2, p0, Ljava/net/Parts;->ref:Ljava/lang/String;

    if-gez v0, :cond_2

    :goto_1
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/Parts;->query:Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    :goto_2
    iget-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    return-void

    :cond_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iput-object p1, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/Parts;->path:Ljava/lang/String;

    return-object v0
.end method

.method getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/Parts;->query:Ljava/lang/String;

    return-object v0
.end method

.method getRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/Parts;->ref:Ljava/lang/String;

    return-object v0
.end method
