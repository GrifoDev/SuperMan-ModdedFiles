.class public final Lcom/google/a/a/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/a/c$1;,
        Lcom/google/a/a/c$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)Lcom/google/a/a/c$a;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    new-instance v0, Lcom/google/a/a/c$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/a/a/c$a;-><init>(Ljava/lang/String;Lcom/google/a/a/c$1;)V

    return-object v0
.end method
