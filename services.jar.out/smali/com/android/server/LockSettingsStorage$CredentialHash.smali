.class public Lcom/android/server/LockSettingsStorage$CredentialHash;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialHash"
.end annotation


# static fields
.field static final VERSION_GATEKEEPER:I = 0x1

.field static final VERSION_LEGACY:I


# instance fields
.field hash:[B

.field isBaseZeroPattern:Z

.field type:I

.field version:I


# direct methods
.method private constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Empty hash for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "None type CredentialHash should not have hash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    iput p2, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    iput p3, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    return-void
.end method

.method synthetic constructor <init>([BIILcom/android/server/LockSettingsStorage$CredentialHash;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-void
.end method

.method private constructor <init>([BZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    iput v0, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->type:I

    iput v0, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    iput-boolean p2, p0, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    return-void
.end method

.method synthetic constructor <init>([BZLcom/android/server/LockSettingsStorage$CredentialHash;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BZ)V

    return-void
.end method

.method static create([BI)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Bad type for CredentialHash"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0
.end method

.method static createEmptyHash()Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 4

    new-instance v0, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>([BII)V

    return-object v0
.end method
