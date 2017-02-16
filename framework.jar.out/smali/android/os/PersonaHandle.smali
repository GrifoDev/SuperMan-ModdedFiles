.class public final Landroid/os/PersonaHandle;
.super Ljava/lang/Object;
.source "PersonaHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersonaHandle$1;
    }
.end annotation


# static fields
.field public static final ALL:Landroid/os/PersonaHandle;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PersonaHandle;",
            ">;"
        }
    .end annotation
.end field

.field public static final CURRENT:Landroid/os/PersonaHandle;

.field public static final CURRENT_OR_SELF:Landroid/os/PersonaHandle;

.field public static final MU_ENABLED:Z = true

.field public static final OWNER:Landroid/os/PersonaHandle;

.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2

.field public static final USER_CURRENT_OR_SELF:I = -0x3

.field public static final USER_NULL:I = -0x2710

.field public static final USER_OWNER:I


# instance fields
.field final mHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->ALL:Landroid/os/PersonaHandle;

    .line 39
    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->CURRENT:Landroid/os/PersonaHandle;

    .line 49
    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->CURRENT_OR_SELF:Landroid/os/PersonaHandle;

    .line 58
    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->OWNER:Landroid/os/PersonaHandle;

    .line 246
    new-instance v0, Landroid/os/PersonaHandle$1;

    invoke-direct {v0}, Landroid/os/PersonaHandle$1;-><init>()V

    .line 245
    sput-object v0, Landroid/os/PersonaHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput p1, p0, Landroid/os/PersonaHandle;->mHandle:I

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    .line 267
    return-void
.end method

.method public static final getAppId(I)I
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 143
    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static final getCallingPersonaId()I
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/PersonaHandle;->getPersonaId(I)I

    move-result v0

    return v0
.end method

.method public static final getPersonaId(I)I
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 115
    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static final getSharedAppGid(I)I
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 151
    const v0, 0x186a0

    rem-int v0, p0, v0

    const v1, 0xc350

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, -0x2710

    return v0
.end method

.method public static final getUid(II)I
    .locals 2
    .param p0, "userId"    # I
    .param p1, "appId"    # I

    .prologue
    const v1, 0x186a0

    .line 132
    mul-int v0, p0, v1

    rem-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static isApp(I)Z
    .locals 3
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 101
    if-lez p0, :cond_1

    .line 102
    invoke-static {p0}, Landroid/os/PersonaHandle;->getAppId(I)I

    move-result v0

    .line 103
    .local v0, "appId":I
    const/16 v2, 0x2710

    if-lt v0, v2, :cond_0

    const/16 v2, 0x4e1f

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 105
    .end local v0    # "appId":I
    :cond_1
    return v1
.end method

.method public static final isIsolated(I)Z
    .locals 3
    .param p0, "uid"    # I

    .prologue
    const/4 v1, 0x0

    .line 91
    if-lez p0, :cond_1

    .line 92
    invoke-static {p0}, Landroid/os/PersonaHandle;->getAppId(I)I

    move-result v0

    .line 93
    .local v0, "appId":I
    const v2, 0x182b8

    if-lt v0, v2, :cond_0

    const v2, 0x1869f

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 95
    .end local v0    # "appId":I
    :cond_1
    return v1
.end method

.method public static final isSame(II)Z
    .locals 2
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .prologue
    .line 74
    invoke-static {p0}, Landroid/os/PersonaHandle;->getPersonaId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/PersonaHandle;->getPersonaId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSameApp(II)Z
    .locals 2
    .param p0, "uid1"    # I
    .param p1, "uid2"    # I

    .prologue
    .line 86
    invoke-static {p0}, Landroid/os/PersonaHandle;->getAppId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/PersonaHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final myPersonaId()I
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/PersonaHandle;->getPersonaId(I)I

    move-result v0

    return v0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/os/PersonaHandle;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .local v0, "h":I
    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    new-instance v1, Landroid/os/PersonaHandle;

    invoke-direct {v1, v0}, Landroid/os/PersonaHandle;-><init>(I)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static writeToParcel(Landroid/os/PersonaHandle;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "h"    # Landroid/os/PersonaHandle;
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 220
    if-eqz p0, :cond_0

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/PersonaHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 219
    :goto_0
    return-void

    .line 223
    :cond_0
    const/16 v0, -0x2710

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 184
    if-eqz p1, :cond_1

    .line 185
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/os/PersonaHandle;

    move-object v2, v0

    .line 186
    .local v2, "other":Landroid/os/PersonaHandle;
    iget v4, p0, Landroid/os/PersonaHandle;->mHandle:I

    iget v5, v2, Landroid/os/PersonaHandle;->mHandle:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 188
    .end local v2    # "other":Landroid/os/PersonaHandle;
    :catch_0
    move-exception v1

    .line 190
    :cond_1
    return v3
.end method

.method public getIdentifier()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PersonaHandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PersonaHandle;->mHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 206
    iget v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    return-void
.end method
