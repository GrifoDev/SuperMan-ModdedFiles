.class final Lcom/google/android/gms/internal/c$d;
.super Lcom/google/android/gms/internal/k$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/k",
        "<",
        "Lcom/google/android/gms/internal/e;",
        ">.c<",
        "Lcom/google/android/gms/appstate/OnStateListLoadedListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/appstate/OnStateListLoadedListener;Lcom/google/android/gms/common/data/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/c$d;->o:Lcom/google/android/gms/internal/c;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/k$c;-><init>(Lcom/google/android/gms/internal/k;Ljava/lang/Object;Lcom/google/android/gms/common/data/d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/appstate/OnStateListLoadedListener;Lcom/google/android/gms/common/data/d;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/common/data/d;->getStatusCode()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/appstate/AppStateBuffer;

    invoke-direct {v1, p2}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/common/data/d;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/appstate/OnStateListLoadedListener;->onStateListLoaded(ILcom/google/android/gms/appstate/AppStateBuffer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/d;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/appstate/OnStateListLoadedListener;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/c$d;->a(Lcom/google/android/gms/appstate/OnStateListLoadedListener;Lcom/google/android/gms/common/data/d;)V

    return-void
.end method
