.class public final enum Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;
.super Ljava/lang/Enum;
.source "Mesh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/srib/virtualtourRenderer/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeshType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

.field public static final enum CURVED:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

.field public static final enum DEPTHMAP:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

.field public static final enum FLAT:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

.field public static final enum PYRAMIDAL:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    const-string/jumbo v1, "FLAT"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->FLAT:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    new-instance v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    const-string/jumbo v1, "CURVED"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->CURVED:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    new-instance v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    const-string/jumbo v1, "PYRAMIDAL"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->PYRAMIDAL:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    new-instance v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    const-string/jumbo v1, "DEPTHMAP"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->DEPTHMAP:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->FLAT:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->CURVED:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->PYRAMIDAL:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->DEPTHMAP:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->$VALUES:[Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;
    .locals 1

    const-class v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;
    .locals 1

    sget-object v0, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->$VALUES:[Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    return-object v0
.end method
