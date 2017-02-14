.class Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;
.super Ljava/lang/Object;
.source "MenuWidgets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuWidgets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskPageData"
.end annotation


# instance fields
.field private final cellHeight:I

.field private final cellWidth:I

.field private generatedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final layout:Lcom/android/launcher2/PagedViewGridLayout;

.field private final page:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/PagedViewGridLayout;ILjava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PagedViewGridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    iput-object p3, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    iput p4, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    iput p5, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)Lcom/android/launcher2/PagedViewGridLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->layout:Lcom/android/launcher2/PagedViewGridLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->page:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->items:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/MenuWidgets$AsyncTaskPageData;->cellHeight:I

    return v0
.end method
