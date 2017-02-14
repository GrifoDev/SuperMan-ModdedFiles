.class public Lcom/android/launcher2/BackupItem;
.super Ljava/lang/Object;
.source "BackupItem.java"


# instance fields
.field protected mCellX:I

.field protected mCellY:I

.field protected mItem:Lcom/android/launcher2/BaseItem;

.field protected mScreen:I

.field protected mSpanX:I

.field protected mSpanY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher2/BackupItem;->mCellX:I

    iput v0, p0, Lcom/android/launcher2/BackupItem;->mCellY:I

    iput v1, p0, Lcom/android/launcher2/BackupItem;->mSpanX:I

    iput v1, p0, Lcom/android/launcher2/BackupItem;->mSpanY:I

    iput v0, p0, Lcom/android/launcher2/BackupItem;->mScreen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/BackupItem;->mItem:Lcom/android/launcher2/BaseItem;

    return-void
.end method


# virtual methods
.method public getCellX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItem;->mCellX:I

    return v0
.end method

.method public getCellY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItem;->mCellY:I

    return v0
.end method

.method public getItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BackupItem;->mItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getScreen()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItem;->mScreen:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItem;->mSpanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/BackupItem;->mSpanY:I

    return v0
.end method

.method public setItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    instance-of v1, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget v1, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v1, p0, Lcom/android/launcher2/BackupItem;->mCellX:I

    iget v1, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v1, p0, Lcom/android/launcher2/BackupItem;->mCellY:I

    invoke-virtual {v0}, Lcom/android/launcher2/HomeItem;->getSpanX()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/BackupItem;->mSpanX:I

    invoke-virtual {v0}, Lcom/android/launcher2/HomeItem;->getSpanY()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/BackupItem;->mSpanY:I

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/BackupItem;->mScreen:I

    iput-object p1, p0, Lcom/android/launcher2/BackupItem;->mItem:Lcom/android/launcher2/BaseItem;

    :cond_0
    return-void
.end method
