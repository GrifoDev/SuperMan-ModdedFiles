.class final Lcom/android/launcher2/HomeFolderItem$1;
.super Ljava/lang/Object;
.source "HomeFolderItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeFolderItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/BaseItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/BaseItem;)I
    .locals 2

    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v1, p2, Lcom/android/launcher2/BaseItem;->mScreen:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/launcher2/BaseItem;

    check-cast p2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/HomeFolderItem$1;->compare(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/BaseItem;)I

    move-result v0

    return v0
.end method
