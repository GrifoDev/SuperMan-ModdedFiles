.class Landroid/hardware/camera2/utils/TypeReference$SpecializedTypeReference;
.super Landroid/hardware/camera2/utils/TypeReference;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/utils/TypeReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecializedTypeReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/hardware/camera2/utils/TypeReference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Landroid/hardware/camera2/utils/TypeReference$SpecializedTypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>.SpecializedTypeReference<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/utils/TypeReference;-><init>(Ljava/lang/reflect/Type;Landroid/hardware/camera2/utils/TypeReference;)V

    .line 97
    return-void
.end method
