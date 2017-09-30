.class final Lcom/google/android/gms/common/internal/p$3;
.super Lcom/google/android/gms/common/internal/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/p;->a(Lcom/google/android/gms/b/ab;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/ab;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/ab;Landroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/p$3;->a:Lcom/google/android/gms/b/ab;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/p$3;->b:Landroid/content/Intent;

    iput p3, p0, Lcom/google/android/gms/common/internal/p$3;->c:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/p$3;->a:Lcom/google/android/gms/b/ab;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/p$3;->b:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/p$3;->c:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/b/ab;->a(Landroid/content/Intent;I)V

    return-void
.end method
