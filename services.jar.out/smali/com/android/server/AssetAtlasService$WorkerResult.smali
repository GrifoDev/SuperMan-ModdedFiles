.class Lcom/android/server/AssetAtlasService$WorkerResult;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerResult"
.end annotation


# instance fields
.field count:I

.field height:I

.field type:Landroid/graphics/Atlas$Type;

.field width:I


# direct methods
.method constructor <init>(Landroid/graphics/Atlas$Type;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->type:Landroid/graphics/Atlas$Type;

    iput p2, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    iput p3, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    iput p4, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->count:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%s %dx%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->type:Landroid/graphics/Atlas$Type;

    invoke-virtual {v2}, Landroid/graphics/Atlas$Type;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/AssetAtlasService$WorkerResult;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
