.class final Lcom/google/android/gms/internal/au$an;
.super Lcom/google/android/gms/internal/at;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "an"
.end annotation


# instance fields
.field final synthetic dJ:Lcom/google/android/gms/internal/au;

.field private final ef:Lcom/google/android/gms/games/OnSignOutCompleteListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/OnSignOutCompleteListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/au$an;->dJ:Lcom/google/android/gms/internal/au;

    invoke-direct {p0}, Lcom/google/android/gms/internal/at;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/OnSignOutCompleteListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/au$an;->ef:Lcom/google/android/gms/games/OnSignOutCompleteListener;

    return-void
.end method


# virtual methods
.method public onSignOutComplete()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/au$an;->dJ:Lcom/google/android/gms/internal/au;

    new-instance v1, Lcom/google/android/gms/internal/au$ao;

    iget-object v2, p0, Lcom/google/android/gms/internal/au$an;->dJ:Lcom/google/android/gms/internal/au;

    iget-object v3, p0, Lcom/google/android/gms/internal/au$an;->ef:Lcom/google/android/gms/games/OnSignOutCompleteListener;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/au$ao;-><init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/OnSignOutCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/au;->a(Lcom/google/android/gms/internal/k$b;)V

    return-void
.end method
