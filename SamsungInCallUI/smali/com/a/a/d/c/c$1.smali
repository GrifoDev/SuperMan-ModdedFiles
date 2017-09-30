.class final Lcom/a/a/d/c/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/d/c/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/d/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Lcom/a/a/d/a/c;
    .locals 2

    new-instance v0, Ljava/lang/NoSuchMethodError;

    const-string v1, "This should never be called!"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NULL_MODEL_LOADER"

    return-object v0
.end method
