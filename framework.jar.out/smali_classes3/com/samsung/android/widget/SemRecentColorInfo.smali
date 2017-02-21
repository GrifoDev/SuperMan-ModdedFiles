.class public Lcom/samsung/android/widget/SemRecentColorInfo;
.super Ljava/lang/Object;
.source "SemRecentColorInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemRecentColorInfo"

.field private static mCurrentColor:Ljava/lang/Integer;

.field private static mRecentColorInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mRecentlyUsedColors:[I

.field private static mSelectedColor:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mSelectedColor:I

    sput-object v1, Lcom/samsung/android/widget/SemRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    sput-object v1, Lcom/samsung/android/widget/SemRecentColorInfo;->mRecentlyUsedColors:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/widget/SemRecentColorInfo;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mRecentColorInfo:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public getCurrentColor()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecentColorInfo()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mRecentColorInfo:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getRecentlyUsedColor()[I
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mRecentlyUsedColors:[I

    return-object v0
.end method

.method public getSelectedColor()Ljava/lang/Integer;
    .locals 1

    sget v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mSelectedColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public saveRecentColorInfo([I)V
    .locals 2

    sput-object p1, Lcom/samsung/android/widget/SemRecentColorInfo;->mRecentlyUsedColors:[I

    if-eqz p1, :cond_0

    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemRecentColorInfo;->updateRecentColorInfo(Ljava/lang/Integer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public saveSelectedColor(I)V
    .locals 0

    sput p1, Lcom/samsung/android/widget/SemRecentColorInfo;->mSelectedColor:I

    return-void
.end method

.method public setCurrentColor(Ljava/lang/Integer;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/widget/SemRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    return-void
.end method

.method public updateRecentColorInfo(Ljava/lang/Integer;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/samsung/android/widget/SemRecentColorInfo;->mRecentColorInfo:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0
.end method
