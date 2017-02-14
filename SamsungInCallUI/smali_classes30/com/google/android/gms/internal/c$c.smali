.class final Lcom/google/android/gms/internal/c$c;
.super Lcom/google/android/gms/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/c;

.field private final r:Lcom/google/android/gms/appstate/OnStateListLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/appstate/OnStateListLoadedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/c$c;->o:Lcom/google/android/gms/internal/c;

    invoke-direct {p0}, Lcom/google/android/gms/internal/b;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appstate/OnStateListLoadedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/c$c;->r:Lcom/google/android/gms/appstate/OnStateListLoadedListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/data/d;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/c$c;->o:Lcom/google/android/gms/internal/c;

    new-instance v1, Lcom/google/android/gms/internal/c$d;

    iget-object v2, p0, Lcom/google/android/gms/internal/c$c;->o:Lcom/google/android/gms/internal/c;

    iget-object v3, p0, Lcom/google/android/gms/internal/c$c;->r:Lcom/google/android/gms/appstate/OnStateListLoadedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/c$d;-><init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/appstate/OnStateListLoadedListener;Lcom/google/android/gms/common/data/d;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/k$b;)V

    return-void
.end method
