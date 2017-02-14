.class public final Lcom/android/server/RecoverySystemService;
.super Lcom/android/server/SystemService;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RecoverySystemService$BinderService;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SOCKET_CONNECTION_MAX_RETRY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "RecoverySystemService"

.field private static final UNCRYPT_SOCKET:Ljava/lang/String; = "uncrypt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/server/RecoverySystemService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/RecoverySystemService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    const-string/jumbo v0, "recovery"

    new-instance v1, Lcom/android/server/RecoverySystemService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/RecoverySystemService$BinderService;-><init>(Lcom/android/server/RecoverySystemService;Lcom/android/server/RecoverySystemService$BinderService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/RecoverySystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
