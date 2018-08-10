.class public final Landroid/service/autofill/FillContext;
.super Ljava/lang/Object;
.source "FillContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillContext$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRequestId:I

.field private final mStructure:Landroid/app/assist/AssistStructure;

.field private mViewNodeLookupTable:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/app/assist/AssistStructure$ViewNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/FillContext$1;

    invoke-direct {v0}, Landroid/service/autofill/FillContext$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/app/assist/AssistStructure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    iput-object p2, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure;

    invoke-direct {p0, v1, v0}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/autofill/FillContext;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/FillContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findViewNodeByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 5

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v4, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v4, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v4, v0}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method public findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    array-length v9, p1

    new-array v0, v9, [Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v5, Landroid/util/SparseIntArray;

    array-length v9, p1

    invoke-direct {v5, v9}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v9, p1

    if-ge v1, v9, :cond_2

    iget-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    if-eqz v9, :cond_1

    iget-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    aget-object v10, p1, v1

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_0

    iget-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/assist/AssistStructure$ViewNode;

    aput-object v9, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v1, v12}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v1, v12}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_2
    iget-object v9, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v9}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v8

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_3

    iget-object v9, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v9, v1}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-lez v9, :cond_7

    invoke-virtual {v7}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_7

    invoke-virtual {v7}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/assist/AssistStructure$ViewNode;

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_5

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    aget-object v2, p1, v3

    if-eqz v2, :cond_6

    invoke-virtual {v6}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    aput-object v6, v0, v3

    iget-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    if-nez v9, :cond_4

    new-instance v9, Landroid/util/ArrayMap;

    array-length v10, p1

    invoke-direct {v9, v10}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    :cond_4
    iget-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v6}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v9

    if-ge v1, v9, :cond_3

    invoke-virtual {v6, v1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v1, v9, :cond_9

    iget-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    if-nez v9, :cond_8

    new-instance v9, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    :cond_8
    iget-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    aget-object v10, p1, v10

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    return v0
.end method

.method public getStructure()Landroid/app/assist/AssistStructure;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FillContext [reqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
