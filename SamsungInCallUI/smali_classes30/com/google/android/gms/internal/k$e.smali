.class final Lcom/google/android/gms/internal/k$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final synthetic bE:Lcom/google/android/gms/internal/k;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/k;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/k$e;->bE:Lcom/google/android/gms/internal/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/k$e;, "Lcom/google/android/gms/internal/k<TT;>.e;"
    iget-object v0, p0, Lcom/google/android/gms/internal/k$e;->bE:Lcom/google/android/gms/internal/k;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/k;->f(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/k$e;, "Lcom/google/android/gms/internal/k<TT;>.e;"
    iget-object v0, p0, Lcom/google/android/gms/internal/k$e;->bE:Lcom/google/android/gms/internal/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/k;->a(Lcom/google/android/gms/internal/k;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/k$e;->bE:Lcom/google/android/gms/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/k;->A()V

    return-void
.end method
