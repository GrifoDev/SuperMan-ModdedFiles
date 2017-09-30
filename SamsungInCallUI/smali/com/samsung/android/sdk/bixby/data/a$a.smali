.class Lcom/samsung/android/sdk/bixby/data/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/data/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/android/sdk/bixby/data/a;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/bixby/data/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/data/a$a;->c:Lcom/samsung/android/sdk/bixby/data/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/sdk/bixby/data/a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/bixby/data/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/bixby/data/a;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/bixby/data/a$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/bixby/data/a$a;-><init>(Lcom/samsung/android/sdk/bixby/data/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
