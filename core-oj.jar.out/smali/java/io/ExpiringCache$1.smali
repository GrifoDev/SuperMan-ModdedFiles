.class Ljava/io/ExpiringCache$1;
.super Ljava/util/LinkedHashMap;
.source "ExpiringCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/io/ExpiringCache;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/io/ExpiringCache;


# direct methods
.method constructor <init>(Ljava/io/ExpiringCache;)V
    .locals 0

    iput-object p1, p0, Ljava/io/ExpiringCache$1;->this$0:Ljava/io/ExpiringCache;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/io/ExpiringCache$1;->size()I

    move-result v0

    iget-object v1, p0, Ljava/io/ExpiringCache$1;->this$0:Ljava/io/ExpiringCache;

    invoke-static {v1}, Ljava/io/ExpiringCache;->-get0(Ljava/io/ExpiringCache;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
