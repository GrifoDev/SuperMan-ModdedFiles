.class public Lcom/a/a/d/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/g",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/g",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/d/d/d;

    invoke-direct {v0}, Lcom/a/a/d/d/d;-><init>()V

    sput-object v0, Lcom/a/a/d/d/d;->a:Lcom/a/a/d/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/a/a/d/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/d/d/d",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/a/a/d/d/d;->a:Lcom/a/a/d/g;

    check-cast v0, Lcom/a/a/d/d/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/a/a/d/b/l;II)Lcom/a/a/d/b/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/b/l",
            "<TT;>;II)",
            "Lcom/a/a/d/b/l",
            "<TT;>;"
        }
    .end annotation

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
