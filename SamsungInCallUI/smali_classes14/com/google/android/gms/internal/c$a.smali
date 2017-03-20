.class final Lcom/google/android/gms/internal/c$a;
.super Lcom/google/android/gms/internal/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final n:Lcom/google/android/gms/appstate/OnStateDeletedListener;

.field final synthetic o:Lcom/google/android/gms/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/appstate/OnStateDeletedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/c$a;->o:Lcom/google/android/gms/internal/c;

    invoke-direct {p0}, Lcom/google/android/gms/internal/b;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/appstate/OnStateDeletedListener;

    iput-object v0, p0, Lcom/google/android/gms/internal/c$a;->n:Lcom/google/android/gms/appstate/OnStateDeletedListener;

    return-void
.end method


# virtual methods
.method public onStateDeleted(II)V
    .locals 4
    .param p1, "statusCode"    # I
    .param p2, "stateKey"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/c$a;->o:Lcom/google/android/gms/internal/c;

    new-instance v1, Lcom/google/android/gms/internal/c$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/c$a;->o:Lcom/google/android/gms/internal/c;

    iget-object v3, p0, Lcom/google/android/gms/internal/c$a;->n:Lcom/google/android/gms/appstate/OnStateDeletedListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/c$b;-><init>(Lcom/google/android/gms/internal/c;Lcom/google/android/gms/appstate/OnStateDeletedListener;II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/k$b;)V

    return-void
.end method
