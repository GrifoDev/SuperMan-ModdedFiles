.class public final Lcom/google/a/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/a/g$1;,
        Lcom/google/a/a/g$a;,
        Lcom/google/a/a/g$b;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static final a:Lcom/google/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/a/a/b;->a(C)Lcom/google/a/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/a/a/g;->a:Lcom/google/a/a/b;

    return-void
.end method

.method public static a()Lcom/google/a/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/a/f",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/a/a/g$b;->c:Lcom/google/a/a/g$b;

    invoke-virtual {v0}, Lcom/google/a/a/g$b;->a()Lcom/google/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/a/a/f;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/a/a/f",
            "<TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/a/a/g;->a()Lcom/google/a/a/f;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/a/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/a/g$a;-><init>(Ljava/lang/Object;Lcom/google/a/a/g$1;)V

    goto :goto_0
.end method
