.class public final Landroid/bluetooth/le/AdvertiseSettings$Builder;
.super Ljava/lang/Object;
.source "AdvertiseSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mConnectable:Z

.field private mCustomAdvInterval:I

.field private mIsStandardAdv:Z

.field private mMode:I

.field private mTimeoutMillis:I

.field private mTxPowerLevel:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    .line 197
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 198
    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    .line 200
    iput v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mCustomAdvInterval:I

    .line 201
    iput-boolean v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mIsStandardAdv:Z

    .line 195
    return-void
.end method


# virtual methods
.method public build()Landroid/bluetooth/le/AdvertiseSettings;
    .locals 8

    .prologue
    .line 289
    new-instance v0, Landroid/bluetooth/le/AdvertiseSettings;

    iget v1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    iget v2, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    iget-boolean v3, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    iget v4, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    iget v5, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mCustomAdvInterval:I

    iget-boolean v6, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mIsStandardAdv:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/le/AdvertiseSettings;-><init>(IIZIIZLandroid/bluetooth/le/AdvertiseSettings;)V

    return-object v0
.end method

.method public semSetCustomAdvertiseInterval(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 3
    .param p1, "customAdvInterval"    # I

    .prologue
    .line 271
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    const/16 v0, 0x4000

    if-le p1, v0, :cond_1

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parameter is out of range of spec, customAdvInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mCustomAdvInterval:I

    .line 274
    return-object p0
.end method

.method public setAdvertiseMode(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 3
    .param p1, "advertiseMode"    # I

    .prologue
    .line 213
    if-ltz p1, :cond_0

    .line 214
    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mMode:I

    .line 218
    return-object p0
.end method

.method public setConnectable(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 0
    .param p1, "connectable"    # Z

    .prologue
    .line 247
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mConnectable:Z

    .line 248
    return-object p0
.end method

.method public setStandardAdvertising(Z)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 0
    .param p1, "isStandardAdv"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mIsStandardAdv:Z

    .line 282
    return-object p0
.end method

.method public setTimeout(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 2
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 258
    if-ltz p1, :cond_0

    const v0, 0x2bf20

    if-le p1, v0, :cond_1

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeoutMillis invalid (must be 0-180000 milliseconds)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTimeoutMillis:I

    .line 263
    return-object p0
.end method

.method public setTxPowerLevel(I)Landroid/bluetooth/le/AdvertiseSettings$Builder;
    .locals 3
    .param p1, "txPowerLevel"    # I

    .prologue
    .line 232
    if-ltz p1, :cond_0

    .line 233
    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown tx power level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    iput p1, p0, Landroid/bluetooth/le/AdvertiseSettings$Builder;->mTxPowerLevel:I

    .line 237
    return-object p0
.end method
