.class Lcom/thoughtworks/xstream/core/util/ClassLoaderReference$Replacement;
.super Ljava/lang/Object;
.source "ClassLoaderReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Replacement"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;

    new-instance v1, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/core/util/CompositeClassLoader;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method
