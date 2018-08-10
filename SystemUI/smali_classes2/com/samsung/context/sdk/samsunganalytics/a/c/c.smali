.class public Lcom/samsung/context/sdk/samsunganalytics/a/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;)Lcom/samsung/context/sdk/samsunganalytics/a/c/a;
    .locals 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/c/c$a;

    if-eq p0, v0, :cond_1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/c/d;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/c/d;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/c/b;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/c/b;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/c/d;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/c/d;-><init>()V

    return-object v0
.end method
