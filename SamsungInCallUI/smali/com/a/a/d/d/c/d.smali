.class public Lcom/a/a/d/d/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/g/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/d/d/c/d$1;,
        Lcom/a/a/d/d/c/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/a/g/b",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/d/d/c/d$a;


# instance fields
.field private final b:Lcom/a/a/d/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/b",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/a/a/d/d/c/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/d/d/c/d$a;-><init>(Lcom/a/a/d/d/c/d$1;)V

    sput-object v0, Lcom/a/a/d/d/c/d;->a:Lcom/a/a/d/d/c/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/a/d/d/c/a;

    invoke-direct {v0}, Lcom/a/a/d/d/c/a;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/d/c/d;->b:Lcom/a/a/d/e;

    new-instance v0, Lcom/a/a/d/c/o;

    invoke-direct {v0}, Lcom/a/a/d/c/o;-><init>()V

    iput-object v0, p0, Lcom/a/a/d/d/c/d;->c:Lcom/a/a/d/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/a/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/c/d;->b:Lcom/a/a/d/e;

    return-object v0
.end method

.method public b()Lcom/a/a/d/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/e",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/a/a/d/d/c/d;->a:Lcom/a/a/d/d/c/d$a;

    return-object v0
.end method

.method public c()Lcom/a/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/b",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/d/d/c/d;->c:Lcom/a/a/d/b;

    return-object v0
.end method

.method public d()Lcom/a/a/d/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/d/f",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/a/a/d/d/b;->b()Lcom/a/a/d/d/b;

    move-result-object v0

    return-object v0
.end method
