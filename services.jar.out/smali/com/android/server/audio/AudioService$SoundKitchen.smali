.class Lcom/android/server/audio/AudioService$SoundKitchen;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundKitchen"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
    }
.end annotation


# static fields
.field public static final DEFAULT_VOLUME:I = 0x64


# instance fields
.field private mList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedDevices:I

.field private mState:Z

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    iput v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    invoke-virtual {p0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen;->setState(Z)V

    return-void
.end method

.method private setDeviceToNative(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_setdevice_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "multisound_setdevice_device"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private setStateToNative(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private setVolumeToNative(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "audioParam;multisound_setvolume_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "multisound_setvolume_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\nMultiSound, size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v8}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v5

    const-string/jumbo v4, ""

    :try_start_0
    iget-object v8, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v9}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v10}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "), device = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", volume = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v8, "AudioService"

    const-string/jumbo v9, "not found"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pinned Devices:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Current Default Device:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/android/server/audio/AudioService;->-wrap10(Lcom/android/server/audio/AudioService;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pin Device:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinDevice()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pin App:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinDevice()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/audio/AudioService$SoundKitchen;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDevice(I)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v0

    :cond_0
    const v1, 0x8000

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public getPinAppInfo(I)Ljava/lang/String;
    .locals 8

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v4

    if-ne v4, p1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get50(Lcom/android/server/audio/AudioService;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AudioService"

    const-string/jumbo v5, "not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v4, ""

    return-object v4
.end method

.method public getPinDevice()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    const v1, -0x8001

    and-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    return v0
.end method

.method public getUidList()[I
    .locals 8

    const v7, 0x8000

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    new-array v3, v5, [I

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-ne v5, v7, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v2

    const/4 v2, 0x1

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-eq v5, v7, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public getVolume(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public initByAudiosServerDied()V
    .locals 8

    const-string/jumbo v6, "AudioService"

    const-string/jumbo v7, "initByAudiosServerDied"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v3

    invoke-direct {p0, v5, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    invoke-direct {p0, v5, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    goto :goto_0

    :cond_0
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService$SoundKitchen;->setStateToNative(Z)V

    return-void
.end method

.method public removeItem(I)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeItem, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v3}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method public setDevice(II)V
    .locals 12

    const v11, 0x8000

    const/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-ne v5, p2, :cond_0

    const-string/jumbo v5, "AudioService"

    const-string/jumbo v6, "same device pin."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_3

    if-eq p2, v11, :cond_3

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-eq v5, v11, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq p1, v5, :cond_1

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v5}, Lcom/android/server/audio/AudioService;->-wrap51(Lcom/android/server/audio/AudioService;I)V

    const-wide/16 v6, 0xc8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v8}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setDevice(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v5

    if-ne v5, v10, :cond_2

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v8}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error in Thread.sleep() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-nez v3, :cond_6

    new-instance v3, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-direct {v3, p0, p2, v10}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;II)V

    :goto_2
    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v5

    if-ne v5, v10, :cond_4

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iput v8, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    if-eqz v5, :cond_5

    iget v6, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-virtual {v5, v9}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v5

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mPinnedDevices:I

    goto :goto_3

    :cond_6
    invoke-virtual {v3, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setDevice(I)V

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    :goto_4
    return-void

    :cond_8
    invoke-direct {p0, p1, v8}, Lcom/android/server/audio/AudioService$SoundKitchen;->setDeviceToNative(II)V

    goto :goto_4
.end method

.method public setState(Z)V
    .locals 6

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    if-eq p1, v3, :cond_2

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mState:Z

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$SoundKitchen;->getUidList()[I

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get63(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundKitchen;

    move-result-object v3

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService$SoundKitchen;->getDevice(I)I

    move-result v3

    const v4, 0x8000

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    aget v4, v2, v1

    invoke-static {v3, v4}, Lcom/android/server/audio/AudioService;->-wrap51(Lcom/android/server/audio/AudioService;I)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get43(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object v3

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SoundKitchen;->setStateToNative(Z)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error in Thread.sleep() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setVolume(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;

    invoke-direct {v0, p0, v3, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;-><init>(Lcom/android/server/audio/AudioService$SoundKitchen;II)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getDevice(Z)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->getVolume()I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen;->mList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$SoundKitchen;->setVolumeToNative(II)V

    return-void

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->setVolume(I)V

    goto :goto_0
.end method
