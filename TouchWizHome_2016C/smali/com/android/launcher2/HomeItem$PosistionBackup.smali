.class Lcom/android/launcher2/HomeItem$PosistionBackup;
.super Ljava/lang/Object;
.source "HomeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PosistionBackup"
.end annotation


# instance fields
.field public cellX:I

.field public cellY:I

.field public screen:I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/HomeItem;)V
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    iput v4, p0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    iput v4, p0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    iget-wide v0, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPrevPosition()I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/HomeItem;->getPrevPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/HomeItem;->setPosition(I)V

    invoke-virtual {p1, v4}, Lcom/android/launcher2/HomeItem;->setPrevPosition(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeItem$PosistionBackup;->backup(Lcom/android/launcher2/HomeItem;)V

    return-void
.end method


# virtual methods
.method public backup(Lcom/android/launcher2/HomeItem;)V
    .locals 1

    iget v0, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v0, p0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellX:I

    iget v0, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v0, p0, Lcom/android/launcher2/HomeItem$PosistionBackup;->cellY:I

    iget v0, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    iput v0, p0, Lcom/android/launcher2/HomeItem$PosistionBackup;->screen:I

    return-void
.end method
