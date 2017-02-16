.class public Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;
.super Ljava/lang/Object;
.source "SemRemoteAppDataExtractionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemRemoteAppDataExtractionManager"


# instance fields
.field private mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 45
    if-nez p1, :cond_0

    .line 46
    const-string/jumbo v0, "SemRemoteAppDataExtractionManager"

    const-string/jumbo v1, "SemRemoteAppDataExtractionManager : Context is null! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Context should not be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const-string/jumbo v0, "spengestureservice"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-nez v0, :cond_1

    .line 52
    const-string/jumbo v0, "SemRemoteAppDataExtractionManager"

    const-string/jumbo v1, "SemRemoteAppDataExtractionManager : Failed to connect to the service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Failed to connect to the service. Feature is not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method public getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string/jumbo v0, "SemRemoteAppDataExtractionManager"

    const-string/jumbo v1, "getScrollableAreaInfo : rect is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-object v2

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "viewHash"    # I
    .param p3, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 105
    if-nez p1, :cond_0

    .line 106
    const-string/jumbo v0, "SemRemoteAppDataExtractionManager"

    const-string/jumbo v1, "getScrollableViewInfo : rect is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v2

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v0

    return-object v0
.end method

.method public getSmartClipDataFromCurrentScreen()Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object v0

    return-object v0
.end method

.method public injectInputEvent(IILjava/util/ArrayList;ZLandroid/os/IBinder;)Z
    .locals 6
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p4, "waitUntilConsume"    # Z
    .param p5, "skipWindowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputEvent;",
            ">;Z",
            "Landroid/os/IBinder;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, "inputEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/InputEvent;>;"
    const/4 v2, 0x0

    .line 124
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    const-string/jumbo v0, "SemRemoteAppDataExtractionManager"

    const-string/jumbo v1, "injectInputEvent : Empty input event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v2

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->injectInputEvent(IILjava/util/ArrayList;ZLandroid/os/IBinder;)V

    .line 130
    const/4 v0, 0x1

    return v0
.end method
