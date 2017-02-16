.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModel"
.end annotation


# static fields
.field public static final TYPE_GENERIC_SOUND:I = 0x1

.field public static final TYPE_KEYPHRASE:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field public final data:[B

.field public final type:I

.field public final uuid:Ljava/util/UUID;

.field public final vendorUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;I[B)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "vendorUuid"    # Ljava/util/UUID;
    .param p3, "type"    # I
    .param p4, "data"    # [B

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    .line 218
    iput-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    .line 219
    iput p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    .line 220
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    .line 216
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 236
    if-ne p0, p1, :cond_0

    .line 237
    return v4

    .line 238
    :cond_0
    if-nez p1, :cond_1

    .line 239
    return v3

    .line 240
    :cond_1
    instance-of v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    if-nez v1, :cond_2

    .line 241
    return v3

    :cond_2
    move-object v0, p1

    .line 242
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 243
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 244
    return v3

    .line 245
    :cond_3
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    if-eq v1, v2, :cond_4

    .line 246
    return v3

    .line 247
    :cond_4
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    if-nez v1, :cond_5

    .line 248
    iget-object v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    if-eqz v1, :cond_6

    .line 249
    return v3

    .line 250
    :cond_5
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 251
    return v3

    .line 252
    :cond_6
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    if-nez v1, :cond_7

    .line 253
    iget-object v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    if-eqz v1, :cond_8

    .line 254
    return v3

    .line 255
    :cond_7
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 256
    return v3

    .line 257
    :cond_8
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 225
    const/16 v0, 0x1f

    .line 227
    .local v0, "prime":I
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 228
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    add-int v1, v2, v4

    .line 229
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 230
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 231
    return v1

    .line 229
    :cond_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    goto :goto_0

    .line 230
    :cond_1
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    goto :goto_1
.end method
