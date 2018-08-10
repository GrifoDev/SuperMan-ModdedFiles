.class public abstract Landroid/provider/OneTimeUseBuilder;
.super Ljava/lang/Object;
.source "OneTimeUseBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private used:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/provider/OneTimeUseBuilder;->used:Z

    return-void
.end method


# virtual methods
.method public abstract build()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected checkNotUsed()V
    .locals 2

    iget-boolean v0, p0, Landroid/provider/OneTimeUseBuilder;->used:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected markUsed()V
    .locals 1

    invoke-virtual {p0}, Landroid/provider/OneTimeUseBuilder;->checkNotUsed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/provider/OneTimeUseBuilder;->used:Z

    return-void
.end method
