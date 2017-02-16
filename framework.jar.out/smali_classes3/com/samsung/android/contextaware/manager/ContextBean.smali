.class public Lcom/samsung/android/contextaware/manager/ContextBean;
.super Ljava/lang/Object;
.source "ContextBean.java"


# instance fields
.field private mContextBundle:Landroid/os/Bundle;

.field private mContextBundleForDisplay:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextBean;->clearContextBean()V

    .line 35
    return-void
.end method

.method private putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 374
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    :cond_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method private putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 287
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 288
    :cond_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 286
    return-void
.end method


# virtual methods
.method protected final clearContextBean()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    .line 275
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    .line 273
    return-void
.end method

.method protected final getContextBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getContextBundleForDisplay()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundleForDisplay:Landroid/os/Bundle;

    return-object v0
.end method

.method public final putContext(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 106
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public final putContext(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 93
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public final putContext(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public final putContext(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 119
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public final putContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 156
    return-void
.end method

.method public final putContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public final putContext(Ljava/lang/String;S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 131
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 132
    invoke-static {p2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public final putContext(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final putContext(Ljava/lang/String;[D)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 235
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gez v2, :cond_1

    .line 236
    :cond_0
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 241
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 242
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 243
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public final putContext(Ljava/lang/String;[F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 213
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 214
    :cond_0
    return-void

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 219
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 220
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 221
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public final putContext(Ljava/lang/String;[I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 191
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gez v2, :cond_1

    .line 192
    :cond_0
    return-void

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 197
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 198
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 199
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public final putContext(Ljava/lang/String;[J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 257
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gez v2, :cond_1

    .line 258
    :cond_0
    return-void

    .line 261
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 263
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 264
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 265
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public final putContext(Ljava/lang/String;[Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 169
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 170
    :cond_0
    return-void

    .line 173
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/contextaware/manager/ContextBean;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 175
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 176
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 177
    aget-boolean v2, p2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 338
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 326
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 314
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 350
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 362
    invoke-static {p2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 302
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[D)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 448
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 449
    :cond_0
    return-void

    .line 451
    :cond_1
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 452
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 453
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 452
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 455
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 428
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 429
    :cond_0
    return-void

    .line 431
    :cond_1
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 432
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 433
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 409
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 410
    :cond_0
    return-void

    .line 412
    :cond_1
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 413
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 414
    aget v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 467
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 468
    :cond_0
    return-void

    .line 470
    :cond_1
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 471
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 472
    aget-wide v2, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public final putContextForDisplay(Ljava/lang/String;[Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 390
    if-eqz p2, :cond_0

    array-length v2, p2

    if-gtz v2, :cond_1

    .line 391
    :cond_0
    return-void

    .line 393
    :cond_1
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 394
    .local v1, "strArr":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 395
    aget-boolean v2, p2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[Ljava/lang/String;)V

    .line 389
    return-void
.end method
