.class public final Lcom/google/android/gms/appstate/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appstate/AppState;


# instance fields
.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:[B

.field private final k:Z

.field private final l:Ljava/lang/String;

.field private final m:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gms/appstate/AppState;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/appstate/a;->h:I

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/appstate/a;->i:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/appstate/a;->j:[B

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/appstate/a;->k:Z

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/appstate/a;->l:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/appstate/a;->m:[B

    return-void
.end method

.method static a(Lcom/google/android/gms/appstate/AppState;)I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/r;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static a(Lcom/google/android/gms/appstate/AppState;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/appstate/AppState;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, p1, :cond_0

    check-cast p1, Lcom/google/android/gms/appstate/AppState;

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static b(Lcom/google/android/gms/appstate/AppState;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/r;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    move-result-object v0

    const-string v1, "Key"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getKey()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    move-result-object v0

    const-string v1, "LocalVersion"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    move-result-object v0

    const-string v1, "LocalData"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    move-result-object v0

    const-string v1, "HasConflict"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->hasConflict()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    move-result-object v0

    const-string v1, "ConflictVersion"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    move-result-object v0

    const-string v1, "ConflictData"

    invoke-interface {p0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/r$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/r$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/r$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/appstate/AppState;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/appstate/a;->a(Lcom/google/android/gms/appstate/AppState;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/appstate/a;->a()Lcom/google/android/gms/appstate/AppState;

    move-result-object v0

    return-object v0
.end method

.method public getConflictData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/a;->m:[B

    return-object v0
.end method

.method public getConflictVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/appstate/a;->h:I

    return v0
.end method

.method public getLocalData()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/a;->j:[B

    return-object v0
.end method

.method public getLocalVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public hasConflict()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/appstate/a;->k:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/appstate/a;->a(Lcom/google/android/gms/appstate/AppState;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/appstate/a;->b(Lcom/google/android/gms/appstate/AppState;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
