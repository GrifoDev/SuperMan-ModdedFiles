.class public Landroid/app/assist/AssistStructure$WindowNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowNode"
.end annotation


# instance fields
.field final mDisplayId:I

.field final mHeight:I

.field final mRoot:Landroid/app/assist/AssistStructure$ViewNode;

.field final mTitle:Ljava/lang/CharSequence;

.field final mWidth:I

.field final mX:I

.field final mY:I


# direct methods
.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v1, 0x11111111

    invoke-virtual {p1, v1, v2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v0

    iget v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    new-instance v1, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v1, p1, v2}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    iput-object v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure;Landroid/view/ViewRootImpl;ZI)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v4

    iput v4, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    new-instance v4, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v4}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    iput-object v4, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v1, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    iget-object v4, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v1, p1, v4, v6}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_0

    if-eqz p3, :cond_2

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v1, v0}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    :cond_0
    if-eqz p3, :cond_4

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v1, v0}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setAssistBlocked(Z)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v1}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    goto :goto_2
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    return v0
.end method

.method public getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    return v0
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)V
    .locals 2

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
