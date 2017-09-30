.class public Lcom/a/a/d/d/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/d/f/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/d/f/c",
        "<TZ;TZ;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/d/f/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/d/f/e",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/d/d/f/e;

    invoke-direct {v0}, Lcom/a/a/d/d/f/e;-><init>()V

    sput-object v0, Lcom/a/a/d/d/f/e;->a:Lcom/a/a/d/d/f/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/a/a/d/d/f/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/d/d/f/c",
            "<TZ;TZ;>;"
        }
    .end annotation

    sget-object v0, Lcom/a/a/d/d/f/e;->a:Lcom/a/a/d/d/f/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/l;)Lcom/a/a/d/b/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<TZ;>;)",
            "Lcom/a/a/d/b/l",
            "<TZ;>;"
        }
    .end annotation

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
