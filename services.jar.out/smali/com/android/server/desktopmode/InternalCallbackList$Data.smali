.class Lcom/android/server/desktopmode/InternalCallbackList$Data;
.super Ljava/lang/Object;
.source "InternalCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/InternalCallbackList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field mCallback:Lcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;

.field mType:I

.field mWhere:I


# direct methods
.method public constructor <init>(IILcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mType:I

    iput p2, p0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mWhere:I

    iput-object p3, p0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mCallback:Lcom/android/server/desktopmode/UiManager$InternalServiceUiCallback;

    return-void
.end method


# virtual methods
.method public equals(II)Z
    .locals 1

    iget v0, p0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mType:I

    if-ne v0, p1, :cond_1

    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mWhere:I

    if-ne v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Lcom/android/server/desktopmode/InternalCallbackList$Data;)Z
    .locals 2

    iget v0, p1, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mType:I

    iget v1, p1, Lcom/android/server/desktopmode/InternalCallbackList$Data;->mWhere:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/desktopmode/InternalCallbackList$Data;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
