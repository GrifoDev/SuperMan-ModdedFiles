.class public Lcom/a/a/d/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/d/b",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/d/a",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/d/d/a;

    invoke-direct {v0}, Lcom/a/a/d/d/a;-><init>()V

    sput-object v0, Lcom/a/a/d/d/a;->a:Lcom/a/a/d/d/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/a/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/d/b",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/a/a/d/d/a;->a:Lcom/a/a/d/d/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
