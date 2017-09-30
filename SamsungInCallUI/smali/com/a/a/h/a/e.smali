.class public Lcom/a/a/h/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/h/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/h/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/h/a/c",
        "<TR;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/a/a/h/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/a/e",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/a/a/h/a/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/h/a/d",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/h/a/e;

    invoke-direct {v0}, Lcom/a/a/h/a/e;-><init>()V

    sput-object v0, Lcom/a/a/h/a/e;->a:Lcom/a/a/h/a/e;

    new-instance v0, Lcom/a/a/h/a/e$a;

    invoke-direct {v0}, Lcom/a/a/h/a/e$a;-><init>()V

    sput-object v0, Lcom/a/a/h/a/e;->b:Lcom/a/a/h/a/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/a/a/h/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/h/a/d",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/a/a/h/a/e;->b:Lcom/a/a/h/a/d;

    return-object v0
.end method

.method public static b()Lcom/a/a/h/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/h/a/c",
            "<TR;>;"
        }
    .end annotation

    sget-object v0, Lcom/a/a/h/a/e;->a:Lcom/a/a/h/a/e;

    return-object v0
.end method

.method static synthetic c()Lcom/a/a/h/a/e;
    .locals 1

    sget-object v0, Lcom/a/a/h/a/e;->a:Lcom/a/a/h/a/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/a/a/h/a/c$a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
