.class final Ljava/lang/ProcessEnvironment$StringEntrySet$2;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessEnvironment$StringEntrySet;->vvEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/ProcessEnvironment$Variable;",
        "Ljava/lang/ProcessEnvironment$Value;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$o:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->val$o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->getKey()Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/ProcessEnvironment$Variable;
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->val$o:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->getValue()Ljava/lang/ProcessEnvironment$Value;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/ProcessEnvironment$Value;
    .locals 1

    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->val$o:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEntrySet$2;->setValue(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/ProcessEnvironment$Value;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
