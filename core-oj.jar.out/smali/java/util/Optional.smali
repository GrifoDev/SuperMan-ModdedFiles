.class public final Ljava/util/Optional;
.super Ljava/lang/Object;
.source "Optional.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final EMPTY:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/Optional;

    invoke-direct {v0}, Ljava/util/Optional;-><init>()V

    sput-object v0, Ljava/util/Optional;->EMPTY:Ljava/util/Optional;

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public static empty()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Ljava/util/Optional;->EMPTY:Ljava/util/Optional;

    .line 81
    .local v0, "t":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/Optional;

    invoke-direct {v0, p0}, Ljava/util/Optional;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "value":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 304
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    if-ne p0, p1, :cond_0

    .line 305
    const/4 v1, 0x1

    return v1

    .line 308
    :cond_0
    instance-of v1, p1, Ljava/util/Optional;

    if-nez v1, :cond_1

    .line 309
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    .line 312
    nop

    nop

    .line 313
    .local v0, "other":Ljava/util/Optional;, "Ljava/util/Optional<*>;"
    iget-object v1, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    iget-object v2, v0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public filter(Ljava/util/function/Predicate;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TT;>;)",
            "Ljava/util/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 169
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    return-object p0

    .line 173
    :cond_0
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    goto :goto_0
.end method

.method public flatMap(Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;",
            "Ljava/util/Optional",
            "<TU;>;>;)",
            "Ljava/util/Optional",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;Ljava/util/Optional<TU;>;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string/jumbo v1, "No value present"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 324
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public ifPresent(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 152
    :cond_0
    return-void
.end method

.method public isPresent()Z
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public map(Ljava/util/function/Function;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function",
            "<-TT;+TU;>;)",
            "Ljava/util/Optional",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 210
    :cond_0
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public orElse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "other":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object p1, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    .end local p1    # "other":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object p1
.end method

.method public orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "other":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Supplier",
            "<+TX;>;)TT;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    .local p1, "exceptionSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TX;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    return-object v0

    .line 285
    :cond_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 340
    .local p0, "this":Ljava/util/Optional;, "Ljava/util/Optional<TT;>;"
    iget-object v0, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 341
    const-string/jumbo v0, "Optional[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/Optional;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 340
    :goto_0
    return-object v0

    .line 342
    :cond_0
    const-string/jumbo v0, "Optional.empty"

    goto :goto_0
.end method
