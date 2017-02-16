.class public Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;
.super Ljava/lang/Object;
.source "MarshalQueryableBlackLevelPattern.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern$MarshalerBlackLevelPattern;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable",
        "<",
        "Landroid/hardware/camera2/params/BlackLevelPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIZE:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/BlackLevelPattern;",
            ">;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<",
            "Landroid/hardware/camera2/params/BlackLevelPattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/BlackLevelPattern;>;"
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern$MarshalerBlackLevelPattern;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern$MarshalerBlackLevelPattern;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableBlackLevelPattern;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 2
    .param p2, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<",
            "Landroid/hardware/camera2/params/BlackLevelPattern;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "managedType":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<Landroid/hardware/camera2/params/BlackLevelPattern;>;"
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 74
    const-class v0, Landroid/hardware/camera2/params/BlackLevelPattern;

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
