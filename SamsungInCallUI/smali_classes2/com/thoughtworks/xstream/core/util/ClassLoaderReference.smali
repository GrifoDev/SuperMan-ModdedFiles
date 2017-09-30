.class public Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;
.super Ljava/lang/ClassLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/core/util/ClassLoaderReference$Replacement;
    }
.end annotation


# instance fields
.field private transient reference:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference$Replacement;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference$Replacement;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getReference()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setReference(Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ClassLoaderReference;->reference:Ljava/lang/ClassLoader;

    return-void
.end method
