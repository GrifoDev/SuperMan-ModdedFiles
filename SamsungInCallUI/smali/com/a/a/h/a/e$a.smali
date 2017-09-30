.class public Lcom/a/a/h/a/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/h/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/h/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/a/h/a/d",
        "<TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/a/a/h/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/a/a/h/a/c",
            "<TR;>;"
        }
    .end annotation

    invoke-static {}, Lcom/a/a/h/a/e;->c()Lcom/a/a/h/a/e;

    move-result-object v0

    return-object v0
.end method
