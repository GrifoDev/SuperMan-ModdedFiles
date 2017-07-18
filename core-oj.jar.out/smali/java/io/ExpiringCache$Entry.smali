.class Ljava/io/ExpiringCache$Entry;
.super Ljava/lang/Object;
.source "ExpiringCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ExpiringCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field private timestamp:J

.field private val:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljava/io/ExpiringCache$Entry;->timestamp:J

    iput-object p3, p0, Ljava/io/ExpiringCache$Entry;->val:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method setTimestamp(J)V
    .locals 1

    iput-wide p1, p0, Ljava/io/ExpiringCache$Entry;->timestamp:J

    return-void
.end method

.method setVal(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/io/ExpiringCache$Entry;->val:Ljava/lang/String;

    return-void
.end method

.method timestamp()J
    .locals 2

    iget-wide v0, p0, Ljava/io/ExpiringCache$Entry;->timestamp:J

    return-wide v0
.end method

.method val()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/io/ExpiringCache$Entry;->val:Ljava/lang/String;

    return-object v0
.end method
