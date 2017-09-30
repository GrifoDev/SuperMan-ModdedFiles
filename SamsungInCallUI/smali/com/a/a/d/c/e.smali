.class public interface abstract Lcom/a/a/d/c/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/a/a/d/c/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/a/a/d/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/d/c/e$1;

    invoke-direct {v0}, Lcom/a/a/d/c/e$1;-><init>()V

    sput-object v0, Lcom/a/a/d/c/e;->a:Lcom/a/a/d/c/e;

    new-instance v0, Lcom/a/a/d/c/j$a;

    invoke-direct {v0}, Lcom/a/a/d/c/j$a;-><init>()V

    invoke-virtual {v0}, Lcom/a/a/d/c/j$a;->a()Lcom/a/a/d/c/j;

    move-result-object v0

    sput-object v0, Lcom/a/a/d/c/e;->b:Lcom/a/a/d/c/e;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
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
.end method
