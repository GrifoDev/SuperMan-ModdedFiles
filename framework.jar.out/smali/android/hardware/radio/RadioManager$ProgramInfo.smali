.class public Landroid/hardware/radio/RadioManager$ProgramInfo;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgramInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$ProgramInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannel:I

.field private final mDigital:Z

.field private final mMetadata:Landroid/hardware/radio/RadioMetadata;

.field private final mSignalStrength:I

.field private final mStereo:Z

.field private final mSubChannel:I

.field private final mTuned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1218
    new-instance v0, Landroid/hardware/radio/RadioManager$ProgramInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo$1;-><init>()V

    .line 1217
    sput-object v0, Landroid/hardware/radio/RadioManager$ProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1137
    return-void
.end method

.method constructor <init>(IIZZZILandroid/hardware/radio/RadioMetadata;)V
    .locals 0
    .param p1, "channel"    # I
    .param p2, "subChannel"    # I
    .param p3, "tuned"    # Z
    .param p4, "stereo"    # Z
    .param p5, "digital"    # Z
    .param p6, "signalStrength"    # I
    .param p7, "metadata"    # Landroid/hardware/radio/RadioMetadata;

    .prologue
    .line 1147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1149
    iput p1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    .line 1150
    iput p2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    .line 1151
    iput-boolean p3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 1152
    iput-boolean p4, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 1153
    iput-boolean p5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 1154
    iput p6, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 1155
    iput-object p7, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 1148
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    .line 1205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    .line 1206
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 1207
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 1208
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 1209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 1210
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1211
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioMetadata;

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    .line 1203
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1206
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1207
    goto :goto_1

    .line 1213
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1246
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1274
    if-ne p0, p1, :cond_0

    .line 1275
    return v4

    .line 1276
    :cond_0
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$ProgramInfo;

    if-nez v1, :cond_1

    .line 1277
    return v3

    :cond_1
    move-object v0, p1

    .line 1278
    check-cast v0, Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 1279
    .local v0, "other":Landroid/hardware/radio/RadioManager$ProgramInfo;
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getChannel()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1280
    return v3

    .line 1281
    :cond_2
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSubChannel()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1282
    return v3

    .line 1283
    :cond_3
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isTuned()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1284
    return v3

    .line 1285
    :cond_4
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isStereo()Z

    move-result v2

    if-eq v1, v2, :cond_5

    .line 1286
    return v3

    .line 1287
    :cond_5
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->isDigital()Z

    move-result v2

    if-eq v1, v2, :cond_6

    .line 1288
    return v3

    .line 1289
    :cond_6
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSignalStrength()I

    move-result v2

    if-eq v1, v2, :cond_7

    .line 1290
    return v3

    .line 1291
    :cond_7
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v1, :cond_8

    .line 1292
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1293
    return v3

    .line 1294
    :cond_8
    iget-object v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getMetadata()Landroid/hardware/radio/RadioMetadata;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/radio/RadioMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1295
    return v3

    .line 1296
    :cond_9
    return v4
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    return v0
.end method

.method public getMetadata()Landroid/hardware/radio/RadioMetadata;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    return-object v0
.end method

.method public getSignalStrength()I
    .locals 1

    .prologue
    .line 1193
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    return v0
.end method

.method public getSubChannel()I
    .locals 1

    .prologue
    .line 1169
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1260
    const/16 v0, 0x1f

    .line 1262
    .local v0, "prime":I
    iget v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    add-int/lit8 v1, v2, 0x1f

    .line 1263
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    add-int v1, v2, v5

    .line 1264
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v5, v2

    .line 1265
    mul-int/lit8 v5, v1, 0x1f

    iget-boolean v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v5, v2

    .line 1266
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v5, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    if-eqz v5, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 1267
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    add-int v1, v2, v3

    .line 1268
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v3, :cond_3

    :goto_3
    add-int v1, v2, v4

    .line 1269
    return v1

    :cond_0
    move v2, v4

    .line 1264
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1265
    goto :goto_1

    :cond_2
    move v3, v4

    .line 1266
    goto :goto_2

    .line 1268
    :cond_3
    iget-object v3, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v3}, Landroid/hardware/radio/RadioMetadata;->hashCode()I

    move-result v4

    goto :goto_3
.end method

.method public isDigital()Z
    .locals 1

    .prologue
    .line 1187
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    return v0
.end method

.method public isStereo()Z
    .locals 1

    .prologue
    .line 1181
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    return v0
.end method

.method public isTuned()Z
    .locals 1

    .prologue
    .line 1175
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ProgramInfo [mChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSubChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1252
    const-string/jumbo v1, ", mTuned="

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1252
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1252
    const-string/jumbo v1, ", mStereo="

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1252
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1252
    const-string/jumbo v1, ", mDigital="

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1252
    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1253
    const-string/jumbo v1, ", mSignalStrength="

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1253
    iget v1, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1254
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 1251
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1255
    const-string/jumbo v1, "]"

    .line 1251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1254
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", mMetadata="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v2}, Landroid/hardware/radio/RadioMetadata;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1230
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSubChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mTuned:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1233
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mStereo:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1234
    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mDigital:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1235
    iget v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    if-nez v0, :cond_3

    .line 1237
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1229
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 1232
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1233
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1234
    goto :goto_2

    .line 1239
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1240
    iget-object v0, p0, Landroid/hardware/radio/RadioManager$ProgramInfo;->mMetadata:Landroid/hardware/radio/RadioMetadata;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/radio/RadioMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3
.end method
