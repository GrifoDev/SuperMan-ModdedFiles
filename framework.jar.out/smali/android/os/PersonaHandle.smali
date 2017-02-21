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

    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->ALL:Landroid/os/PersonaHandle;

    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->CURRENT:Landroid/os/PersonaHandle;

    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->CURRENT_OR_SELF:Landroid/os/PersonaHandle;

    new-instance v0, Landroid/os/PersonaHandle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/PersonaHandle;-><init>(I)V

    sput-object v0, Landroid/os/PersonaHandle;->OWNER:Landroid/os/PersonaHandle;

    new-instance v0, Landroid/os/PersonaHandle$1;

    invoke-direct {v0}, Landroid/os/PersonaHandle$1;-><init>()V

    sput-object v0, Landroid/os/PersonaHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/PersonaHandle;->mHandle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    return-void
.end method

.method public static final getAppId(I)I
    .locals 1

    const v0, 0x186a0

    rem-int v0, p0, v0

    return v0
.end method

.method public static final getCallingPersonaId()I
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/PersonaHandle;->getPersonaId(I)I

    move-result v0

    return v0
.end method

.method public static final getPersonaId(I)I
    .locals 1

    const v0, 0x186a0

    div-int v0, p0, v0

    return v0
.end method

.method public static final getSharedAppGid(I)I
    .locals 2

    const v0, 0x186a0

    rem-int v0, p0, v0

    const v1, 0xc350

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, -0x2710

    return v0
.end method

.method public static final getUid(II)I
    .locals 2

    const v1, 0x186a0

    mul-int v0, p0, v1

    rem-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static isApp(I)Z
    .locals 3

    const/4 v1, 0x0

    if-lez p0, :cond_1

    invoke-static {p0}, Landroid/os/PersonaHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_0

    const/16 v2, 0x4e1f

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static final isIsolated(I)Z
    .locals 3

    const/4 v1, 0x0

    if-lez p0, :cond_1

    invoke-static {p0}, Landroid/os/PersonaHandle;->getAppId(I)I

    move-result v0

    const v2, 0x182b8

    if-lt v0, v2, :cond_0

    const v2, 0x1869f

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static final isSame(II)Z
    .locals 2

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

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/PersonaHandle;->getPersonaId(I)I

    move-result v0

    return v0
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/os/PersonaHandle;
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

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

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/PersonaHandle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x2710

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/os/PersonaHandle;

    move-object v2, v0

    iget v4, p0, Landroid/os/PersonaHandle;->mHandle:I

    iget v5, v2, Landroid/os/PersonaHandle;->mHandle:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :catch_0
    move-exception v1

    :cond_1
    return v3
.end method

.method public getIdentifier()I
    .locals 1

    iget v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

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

    iget v0, p0, Landroid/os/PersonaHandle;->mHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
