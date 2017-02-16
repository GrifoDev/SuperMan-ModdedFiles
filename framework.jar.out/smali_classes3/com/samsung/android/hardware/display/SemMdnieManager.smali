.class public final Lcom/samsung/android/hardware/display/SemMdnieManager;
.super Ljava/lang/Object;
.source "SemMdnieManager.java"


# static fields
.field public static final CONTENT_MODE_BROWSER:I = 0x8

.field public static final CONTENT_MODE_CAMERA:I = 0x4

.field public static final CONTENT_MODE_DMB:I = 0x14

.field public static final CONTENT_MODE_EBOOK:I = 0x9

.field public static final CONTENT_MODE_GALLERY:I = 0x6

.field public static final CONTENT_MODE_GAME_HIGH:I = 0xd

.field public static final CONTENT_MODE_GAME_LOW:I = 0xb

.field public static final CONTENT_MODE_GAME_MID:I = 0xc

.field public static final CONTENT_MODE_UI:I = 0x0

.field public static final CONTENT_MODE_VIDEO:I = 0x1

.field public static final CONTENT_MODE_VIDEO_ENHANCER:I = 0xe

.field public static final CONTENT_MODE_VIDEO_ENHANCER_2:I = 0xf

.field public static final MDNIE_SUPPORT_BLUE_FILTER:I = 0x1000

.field public static final MDNIE_SUPPORT_COLOR_ADJUSTMENT:I = 0x800

.field public static final MDNIE_SUPPORT_CONTENT_GAME_MODE:I = 0x2

.field public static final MDNIE_SUPPORT_CONTENT_MODE:I = 0x1

.field public static final MDNIE_SUPPORT_CONTENT_VIDEO_ENGANCE_MODE:I = 0x4

.field public static final MDNIE_SUPPORT_GRAYSCALE:I = 0x200

.field public static final MDNIE_SUPPORT_HDR:I = 0x4000

.field public static final MDNIE_SUPPORT_HMT:I = 0x2000

.field public static final MDNIE_SUPPORT_NEGATIVE:I = 0x100

.field public static final MDNIE_SUPPORT_READING_MODE:I = 0x20

.field public static final MDNIE_SUPPORT_SCREENCURTAIN:I = 0x400

.field public static final MDNIE_SUPPORT_SCREEN_MODE:I = 0x10

.field private static RETURN_ERROR:I = 0x0

.field public static final SCREEN_MODE_ADAPTIVE:I = 0x4

.field public static final SCREEN_MODE_AMOLED_CINEMA:I = 0x0

.field public static final SCREEN_MODE_AMOLED_PHOTO:I = 0x1

.field public static final SCREEN_MODE_BASIC:I = 0x2

.field public static final SCREEN_MODE_READING:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SemMdnieManager"


# instance fields
.field final mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hardware/display/ISemMdnieManager;)V
    .locals 2
    .param p1, "service"    # Lcom/samsung/android/hardware/display/ISemMdnieManager;

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    if-nez p1, :cond_0

    .line 160
    const-string/jumbo v0, "SemMdnieManager"

    const-string/jumbo v1, "In Constructor Stub-Service(ISemMdnieManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    .line 158
    return-void
.end method


# virtual methods
.method public getContentMode()I
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 185
    sget v1, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v1

    .line 189
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getContentMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v1
.end method

.method public getScreenMode()I
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 170
    sget v1, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v1

    .line 174
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getScreenMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, Lcom/samsung/android/hardware/display/SemMdnieManager;->RETURN_ERROR:I

    return v1
.end method

.method public getSupportedContentMode()[I
    .locals 3

    .prologue
    .line 253
    const/4 v2, 0x0

    new-array v1, v2, [I

    .line 254
    .local v1, "emptyArray":[I
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v2, :cond_0

    .line 255
    return-object v1

    .line 259
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getSupportedContentMode()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getSupportedScreenMode()[I
    .locals 3

    .prologue
    .line 218
    const/4 v2, 0x0

    new-array v1, v2, [I

    .line 219
    .local v1, "emptyArray":[I
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v2, :cond_0

    .line 220
    return-object v1

    .line 224
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->getSupportedScreenMode()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public isContentModeSupported()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 237
    return v2

    .line 241
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->isContentModeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public isScreenModeSupported()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 202
    return v2

    .line 206
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->isScreenModeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public setAmoledACL(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 306
    return v2

    .line 310
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setAmoledACL(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public setContentMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 290
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 291
    return v2

    .line 295
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setContentMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public setNightMode(ZI)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 319
    return v2

    .line 323
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setNightMode(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public setScreenMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 273
    return v2

    .line 277
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setScreenMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .locals 3
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 394
    return v2

    .line 398
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeAccessibilityMode(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "result"    # [I

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 334
    return v2

    .line 338
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 378
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 379
    return v2

    .line 383
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeEmergencyMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public setmDNIeNegative(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 349
    return v2

    .line 353
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    if-nez v1, :cond_0

    .line 364
    return v2

    .line 368
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/display/SemMdnieManager;->mService:Lcom/samsung/android/hardware/display/ISemMdnieManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/hardware/display/ISemMdnieManager;->setmDNIeScreenCurtain(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    return v2
.end method
