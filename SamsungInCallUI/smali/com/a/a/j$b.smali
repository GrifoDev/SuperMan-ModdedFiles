.class public final Lcom/a/a/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/j$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/j;

.field private final b:Lcom/a/a/d/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/d/c/l",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/a/a/j;Lcom/a/a/d/c/l;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/c/l",
            "<TA;TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/a/a/j$b;->a:Lcom/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/a/a/j$b;->b:Lcom/a/a/d/c/l;

    iput-object p3, p0, Lcom/a/a/j$b;->c:Ljava/lang/Class;

    return-void
.end method

.method static synthetic a(Lcom/a/a/j$b;)Lcom/a/a/d/c/l;
    .locals 1

    iget-object v0, p0, Lcom/a/a/j$b;->b:Lcom/a/a/d/c/l;

    return-object v0
.end method

.method static synthetic b(Lcom/a/a/j$b;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/a/a/j$b;->c:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/a/a/j$b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/a/a/j$b",
            "<TA;TT;>.a;"
        }
    .end annotation

    new-instance v0, Lcom/a/a/j$b$a;

    invoke-direct {v0, p0, p1}, Lcom/a/a/j$b$a;-><init>(Lcom/a/a/j$b;Ljava/lang/Object;)V

    return-object v0
.end method
