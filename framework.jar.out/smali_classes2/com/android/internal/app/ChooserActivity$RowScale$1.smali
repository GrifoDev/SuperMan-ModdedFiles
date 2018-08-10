.class final Lcom/android/internal/app/ChooserActivity$RowScale$1;
.super Landroid/util/FloatProperty;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity$RowScale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty",
        "<",
        "Lcom/android/internal/app/ChooserActivity$RowScale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/internal/app/ChooserActivity$RowScale;)Ljava/lang/Float;
    .locals 1

    iget v0, p1, Lcom/android/internal/app/ChooserActivity$RowScale;->mScale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/internal/app/ChooserActivity$RowScale;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$RowScale$1;->get(Lcom/android/internal/app/ChooserActivity$RowScale;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/android/internal/app/ChooserActivity$RowScale;F)V
    .locals 1

    iput p2, p1, Lcom/android/internal/app/ChooserActivity$RowScale;->mScale:F

    iget-object v0, p1, Lcom/android/internal/app/ChooserActivity$RowScale;->mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/internal/app/ChooserActivity$RowScale;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$RowScale$1;->setValue(Lcom/android/internal/app/ChooserActivity$RowScale;F)V

    return-void
.end method
