.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->b:J

    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->a:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->b:J

    return-wide v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;->c:Ljava/lang/String;

    return-object v0
.end method
