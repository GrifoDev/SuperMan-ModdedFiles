.class final Lcom/google/android/gms/internal/au$ao;
.super Lcom/google/android/gms/internal/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ao"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/k",
        "<",
        "Lcom/google/android/gms/internal/az;",
        ">.b<",
        "Lcom/google/android/gms/games/OnSignOutCompleteListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dJ:Lcom/google/android/gms/internal/au;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/au;Lcom/google/android/gms/games/OnSignOutCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/au$ao;->dJ:Lcom/google/android/gms/internal/au;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/k$b;-><init>(Lcom/google/android/gms/internal/k;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/games/OnSignOutCompleteListener;)V
    .locals 0

    invoke-interface {p1}, Lcom/google/android/gms/games/OnSignOutCompleteListener;->onSignOutComplete()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/OnSignOutCompleteListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/au$ao;->a(Lcom/google/android/gms/games/OnSignOutCompleteListener;)V

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
