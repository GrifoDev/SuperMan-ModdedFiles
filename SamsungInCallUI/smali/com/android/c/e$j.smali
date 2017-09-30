.class Lcom/android/c/e$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/c/e$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/c/e;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/android/c/e;)V
    .locals 1

    iput-object p1, p0, Lcom/android/c/e$j;->a:Lcom/android/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/c/e$j;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/c/e;Lcom/android/c/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/c/e$j;-><init>(Lcom/android/c/e;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/c/e$g;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/android/c/e$e;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/android/c/e$e;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/android/c/e$j;->b:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/c/e$j;->b:Z

    return v0
.end method
