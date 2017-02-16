.class public abstract Landroid/os/CustomFrequencyManager$FrequencyRequest;
.super Ljava/lang/Object;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "FrequencyRequest"
.end annotation


# instance fields
.field public mFrequency:I

.field mInvalidParam:Z

.field public mPkgName:Ljava/lang/String;

.field mTimeoutMs:J

.field mToken:Landroid/os/IBinder;

.field public mType:I

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 6
    .param p1, "this$0"    # Landroid/os/CustomFrequencyManager;
    .param p2, "type"    # I
    .param p3, "frequency"    # I
    .param p4, "timeout"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 224
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    .line 227
    :try_start_0
    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Boost Request from package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " frequency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    const-string/jumbo v3, " type = "

    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    if-eq p2, v4, :cond_0

    const/16 v1, 0x9

    if-ne p2, v1, :cond_1

    .line 230
    :cond_0
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkGPUFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 231
    const-string/jumbo v1, "CustomFrequencyManager"

    const-string/jumbo v2, "GPUFrequencyRequest : invalid frequency range"

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    .line 233
    return-void

    .line 235
    :cond_1
    const/16 v1, 0xa

    if-eq p2, v1, :cond_2

    .line 236
    const/16 v1, 0xb

    if-ne p2, v1, :cond_3

    .line 237
    :cond_2
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkSysBusFrequencyRange(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 238
    const-string/jumbo v1, "CustomFrequencyManager"

    const-string/jumbo v2, "SysBusFrequencyRequest : invalid frequency range"

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    .line 240
    return-void

    .line 242
    :cond_3
    const/4 v1, 0x7

    if-eq p2, v1, :cond_4

    .line 243
    const/4 v1, 0x6

    if-ne p2, v1, :cond_5

    .line 244
    :cond_4
    iget-object v1, p1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    invoke-interface {v1, p3}, Landroid/os/ICustomFrequencyManager;->checkCPUBoostRange(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 245
    const-string/jumbo v1, "CustomFrequencyManager"

    const-string/jumbo v2, "CPUDVFSControlRequest : invalid frequency range"

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    return-void

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Landroid/os/CustomFrequencyManager;->-wrap2(Ljava/lang/Exception;)V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    iput p2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    .line 254
    iput p3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    .line 255
    iput-wide p4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    .line 256
    const-string/jumbo v1, "CustomFrequencyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "!! pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/CustomFrequencyManager;->-wrap1(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Landroid/os/CustomFrequencyManager;->-get0()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 259
    const-string/jumbo v1, "android"

    invoke-static {}, Landroid/os/CustomFrequencyManager;->-get0()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 260
    invoke-static {}, Landroid/os/CustomFrequencyManager;->-get1()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/os/CustomFrequencyManager;->-get1()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 261
    invoke-static {}, Landroid/os/CustomFrequencyManager;->-get1()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    .line 269
    :cond_6
    :goto_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_7

    .line 270
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    .line 272
    :cond_7
    iput-object p6, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    .line 224
    return-void

    .line 263
    :cond_8
    invoke-static {}, Landroid/os/CustomFrequencyManager;->-wrap0()V

    .line 264
    invoke-static {}, Landroid/os/CustomFrequencyManager;->-get1()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    goto :goto_0
.end method


# virtual methods
.method public cancelFrequencyRequest()V
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequestImpl()V

    .line 286
    :cond_0
    return-void
.end method

.method public abstract cancelFrequencyRequestImpl()V
.end method

.method public doFrequencyRequest()V
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mInvalidParam:Z

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequestImpl()V

    .line 280
    :cond_0
    return-void
.end method

.method public abstract doFrequencyRequestImpl()V
.end method

.method public getLockType()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mType:I

    return v0
.end method
