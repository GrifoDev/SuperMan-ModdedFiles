.class final Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecoveryCredentialResponse"
.end annotation


# static fields
.field public static final DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

.field public static final ERROR:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

.field public static final OK:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

.field public static final RESPONSE_DONE:I = 0x1

.field public static final RESPONSE_ERROR:I = -0x1

.field public static final RESPONSE_OK:I


# instance fields
.field private final mResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;-><init>(I)V

    sput-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->OK:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    new-instance v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;-><init>(I)V

    sput-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    new-instance v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;-><init>(I)V

    sput-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->ERROR:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->mResponseCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->mResponseCode:I

    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->mResponseCode:I

    return v0
.end method
