.class public Lcom/google/android/gms/internal/ba;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ba$1;,
        Lcom/google/android/gms/internal/ba$a;,
        Lcom/google/android/gms/internal/ba$b;
    }
.end annotation


# instance fields
.field protected dt:Lcom/google/android/gms/internal/au;

.field protected ej:Lcom/google/android/gms/internal/ba$a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/au;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ba;->dt:Lcom/google/android/gms/internal/au;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ba;->F(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/au;ILcom/google/android/gms/internal/ba$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ba;-><init>(Lcom/google/android/gms/internal/au;I)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/au;I)Lcom/google/android/gms/internal/ba;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/as;->ao()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ba$b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ba$b;-><init>(Lcom/google/android/gms/internal/au;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ba;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ba;-><init>(Lcom/google/android/gms/internal/au;I)V

    goto :goto_0
.end method


# virtual methods
.method protected F(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ba$a;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ba$a;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/internal/ba$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ba;->ej:Lcom/google/android/gms/internal/ba$a;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public aB()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->dt:Lcom/google/android/gms/internal/au;

    iget-object v1, p0, Lcom/google/android/gms/internal/ba;->ej:Lcom/google/android/gms/internal/ba$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/ba$a;->ek:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ba;->ej:Lcom/google/android/gms/internal/ba$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ba$a;->aE()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/au;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public aC()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->ej:Lcom/google/android/gms/internal/ba$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ba$a;->aE()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public aD()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->ej:Lcom/google/android/gms/internal/ba$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/ba$a;->ek:Landroid/os/IBinder;

    return-object v0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ba;->ej:Lcom/google/android/gms/internal/ba$a;

    iput p1, v0, Lcom/google/android/gms/internal/ba$a;->gravity:I

    return-void
.end method
